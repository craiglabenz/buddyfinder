import 'package:api_data/api_data.dart';
import 'package:shared/shared.dart';
import 'package:test/test.dart';

void main() {
  group('PetsRepository', () {
    late PetsRepository repository;

    setUp(() {
      repository = PetsRepository();
    });

    test('getPets returns all pets by default', () async {
      final pets = await repository.getPets();
      expect(pets, isNotEmpty);
      expect(pets.length, 40); // 20 dogs + 20 cats
    });

    test('getPets filters by type Dog', () async {
      final dogs = await repository.getPets(type: PetType.dog);
      expect(dogs, isNotEmpty);
      expect(dogs.every((p) => p is Dog), isTrue);
      expect(dogs.length, 20);
    });

    test('getPets filters by type Cat', () async {
      final cats = await repository.getPets(type: PetType.cat);
      expect(cats, isNotEmpty);
      expect(cats.every((p) => p is Cat), isTrue);
      expect(cats.length, 20);
    });

    test('getPets filters by breed', () async {
      final goldens = await repository.getPets(breed: 'Golden Retriever');
      expect(goldens, isNotEmpty);
      expect(goldens.first.breed, 'Golden Retriever');
    });

    test('getPets filters by breed case-insensitive', () async {
      final goldens = await repository.getPets(breed: 'golden retriever');
      expect(goldens, isNotEmpty);
      expect(goldens.first.breed, 'Golden Retriever');
    });

    test('getPet returns pet by ID', () async {
      final pet = await repository.getPet('dog-1');
      expect(pet, isNotNull);
      expect(pet!.id, 'dog-1');
      expect(pet.name, 'Buddy');
    });

    test('getPet returns null for unknown ID', () async {
      final pet = await repository.getPet('unknown-id');
      expect(pet, isNull);
    });
  });
}
