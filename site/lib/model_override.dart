import 'package:jaspr/jaspr.dart';
import 'package:shared/shared.dart';

extension type PetOverride(Pet pet) implements Pet {
  @decoder
  factory PetOverride.decode(Map<String, dynamic> data) {
    return PetOverride(Pet.fromJson(data));
  }

  @encoder
  Map<String, dynamic> encode() => toJson();
}
