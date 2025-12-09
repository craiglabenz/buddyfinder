import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

enum PetType { dog, cat }

enum PetAge {
  puppy,
  young,
  adult,
  senior;

  PetAge fromAge(int age, PetType type) {
    return switch (type) {
      .dog => switch (age) {
        < 2 => PetAge.puppy,
        < 4 => PetAge.young,
        < 8 => PetAge.adult,
        _ => PetAge.senior,
      },
      .cat => switch (age) {
        < 2 => PetAge.puppy,
        < 6 => PetAge.young,
        < 14 => PetAge.adult,
        _ => PetAge.senior,
      },
    };
  }
}

@freezed
sealed class Pet with _$Pet {
  const factory Pet.dog({
    required String id,
    required String name,
    required int age,
    required String breed,
    required String imageUrl,
    required String description,
  }) = Dog;

  const factory Pet.cat({
    required String id,
    required String name,
    required int age,
    required String breed,
    required String imageUrl,
    required String description,
    required bool isIndoor,
  }) = Cat;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
