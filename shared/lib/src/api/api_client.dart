import '../models/pet.dart';

abstract interface class BuddyfinderApi {
  Future<List<Pet>> getPets({PetType? type, String? breed});

  Future<Pet?> getPet(String id);

  Future<void> updatePet(String id, Pet pet);

  Future<void> deletePet(String id);
}
