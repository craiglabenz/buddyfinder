import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

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
