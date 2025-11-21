import 'dart:io';

import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final repository = context.read<PetsRepository>();
  final params = context.request.uri.queryParameters;

  final typeStr = params['type'];
  final breed = params['breed'];

  PetType? type;
  if (typeStr != null) {
    if (typeStr.toLowerCase() == 'dog') {
      type = PetType.dog;
    } else if (typeStr.toLowerCase() == 'cat') {
      type = PetType.cat;
    }
  }

  final pets = await repository.getPets(type: type, breed: breed);
  return Response.json(body: pets);
}
