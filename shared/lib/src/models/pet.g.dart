// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dog _$DogFromJson(Map<String, dynamic> json) => Dog(
  id: json['id'] as String,
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  breed: json['breed'] as String,
  imageUrl: json['imageUrl'] as String,
  description: json['description'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'age': instance.age,
  'breed': instance.breed,
  'imageUrl': instance.imageUrl,
  'description': instance.description,
  'runtimeType': instance.$type,
};

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
  id: json['id'] as String,
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  breed: json['breed'] as String,
  imageUrl: json['imageUrl'] as String,
  description: json['description'] as String,
  isIndoor: json['isIndoor'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'age': instance.age,
  'breed': instance.breed,
  'imageUrl': instance.imageUrl,
  'description': instance.description,
  'isIndoor': instance.isIndoor,
  'runtimeType': instance.$type,
};
