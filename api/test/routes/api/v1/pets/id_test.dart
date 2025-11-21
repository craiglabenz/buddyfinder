import 'dart:io';

import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared/shared.dart';
import 'package:test/test.dart';

import '../../../../../routes/api/v1/pets/[id].dart' as route;

class MockRequestContext extends Mock implements RequestContext {}

class MockRequest extends Mock implements Request {}

class MockPetsRepository extends Mock implements PetsRepository {}

void main() {
  group('GET /api/v1/pets/[id]', () {
    late MockRequestContext context;
    late MockRequest request;
    late MockPetsRepository repository;

    setUp(() {
      context = MockRequestContext();
      request = MockRequest();
      repository = MockPetsRepository();

      when(() => context.request).thenReturn(request);
      when(() => context.read<PetsRepository>()).thenReturn(repository);
    });

    test('returns 405 if method is not GET', () async {
      when(() => request.method).thenReturn(HttpMethod.post);
      final response = await route.onRequest(context, '1');
      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('returns 404 if pet not found', () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      when(() => repository.getPet('1')).thenAnswer((_) async => null);

      final response = await route.onRequest(context, '1');
      expect(response.statusCode, equals(HttpStatus.notFound));
    });

    test('returns pet if found', () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      const pet = Dog(
        id: '1',
        name: 'Buddy',
        age: 3,
        breed: 'Golden',
        imageUrl: 'img',
        description: 'desc',
      );
      when(() => repository.getPet('1')).thenAnswer((_) async => pet);

      final response = await route.onRequest(context, '1');
      expect(response.statusCode, equals(HttpStatus.ok));

      final body = await response.json() as Map<String, Object?>;
      expect(body['name'], equals('Buddy'));
    });
  });
}
