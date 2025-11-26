import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

class PetService implements BuddyfinderApi {
  final String baseUrl;

  PetService({this.baseUrl = 'http://localhost:8888/api/v1'});

  int timesRequested = 0;

  @override
  Future<List<Pet>> getPets({PetType? type, String? breed}) async {
    timesRequested++;
    print('Requested pets $timesRequested times');
    var uri = Uri.parse('$baseUrl/pets');
    final queryParameters = <String, String>{};
    if (type != null) {
      queryParameters['type'] = type.name;
    }
    if (breed != null) {
      queryParameters['breed'] = breed;
    }
    if (queryParameters.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParameters);
    }

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Pet.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load pets');
    }
  }

  @override
  Future<Pet?> getPet(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/pets/$id'));

    if (response.statusCode == 200) {
      return Pet.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 404) {
      return null;
    } else {
      throw Exception('Failed to load pet');
    }
  }

  @override
  Future<void> updatePet(String id, Pet pet) async {
    final response = await http.put(
      Uri.parse('$baseUrl/pets/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(pet.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update pet');
    }
  }

  @override
  Future<void> deletePet(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/pets/$id'));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete pet');
    }
  }
}
