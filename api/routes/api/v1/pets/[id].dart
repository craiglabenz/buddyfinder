import 'dart:io';

import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';

// /api/pets/:id
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final repository = context.read<PetsRepository>();
  final pet = await repository.getPet(id);

  if (pet == null) {
    return Response(statusCode: HttpStatus.notFound);
  }

  return Response.json(body: pet);
}
