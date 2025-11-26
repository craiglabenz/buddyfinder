import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:shared/shared.dart';

class PetsRepository {
  List<Pet>? _pets;

  Future<void> _ensureLoaded() async {
    if (_pets != null) return;

    final uri = Uri.parse('package:api_data/pets.json');
    final fileUri = await Isolate.resolvePackageUri(uri);

    if (fileUri == null) {
      throw Exception('Could not find pets.json');
    }

    final file = File.fromUri(fileUri);
    final content = await file.readAsString();
    final List<dynamic> jsonList = jsonDecode(content);

    _pets = jsonList.map((json) => Pet.fromJson(json)).toList();
  }

  Future<List<Pet>> getPets({PetType? type, String? breed}) async {
    await _ensureLoaded();
    return _pets!.where((pet) {
      if (type != null) {
        // Check type based on runtime type or add a type field to the model if needed.
        // Since we used sealed classes, we can check using pattern matching or `is`.
        // But Pet.fromJson creates specific subtypes.
        if (type == PetType.dog && pet is! Dog) return false;
        if (type == PetType.cat && pet is! Cat) return false;
      }
      if (breed != null &&
          !pet.breed.toLowerCase().contains(breed.toLowerCase())) {
        return false;
      }
      return true;
    }).toList();
  }

  Future<Pet?> getPet(String id) async {
    await _ensureLoaded();
    try {
      return _pets!.firstWhere((pet) => pet.id == id);
    } catch (_) {
      return null;
    }
  }
}
