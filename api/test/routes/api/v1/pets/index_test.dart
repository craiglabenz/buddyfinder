import 'dart:io';

import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared/shared.dart';
import 'package:test/test.dart';

import '../../../../../routes/api/v1/pets/index.dart' as route;

class MockRequestContext extends Mock implements RequestContext {}

class MockRequest extends Mock implements Request {}

class MockPetsRepository extends Mock implements PetsRepository {}

void main() {
  group('GET /api/v1/pets', () {
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
      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('returns list of pets', () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      when(() => request.uri)
          .thenReturn(Uri.parse('http://localhost/api/v1/pets'));

      final pets = [
        const Dog(
          id: '1',
          name: 'Buddy',
          age: 3,
          breed: 'Golden',
          imageUrl: 'img',
          description: 'desc',
        ),
      ];
      when(() => repository.getPets()).thenAnswer((_) async => pets);

      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.ok));

      final body = (await response.json() as List).cast<Map<String, Object?>>();
      expect(body, hasLength(1));
      expect(body[0]['name'], equals('Buddy'));
    });

    test('filters by type', () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      when(() => request.uri)
          .thenReturn(Uri.parse('http://localhost/api/v1/pets?type=dog'));

      final pets = [
        const Dog(
          id: '1',
          name: 'Buddy',
          age: 3,
          breed: 'Golden',
          imageUrl: 'img',
          description: 'desc',
        ),
      ];
      when(() => repository.getPets(type: PetType.dog))
          .thenAnswer((_) async => pets);

      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.ok));
      verify(() => repository.getPets(type: PetType.dog)).called(1);
    });

    test('filters by breed', () async {
      when(() => request.method).thenReturn(HttpMethod.get);
      when(() => request.uri)
          .thenReturn(Uri.parse('http://localhost/api/v1/pets?breed=Golden'));

      final pets = [
        const Dog(
          id: '1',
          name: 'Buddy',
          age: 3,
          breed: 'Golden',
          imageUrl: 'img',
          description: 'desc',
        ),
      ];
      when(() => repository.getPets(breed: 'Golden'))
          .thenAnswer((_) async => pets);

      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.ok));
      verify(() => repository.getPets(breed: 'Golden')).called(1);
    });
  });
}
