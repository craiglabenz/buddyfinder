// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Pet _$PetFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'dog':
          return Dog.fromJson(
            json
          );
                case 'cat':
          return Cat.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Pet',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Pet {

 String get id; String get name; int get age; String get breed; String get imageUrl; String get description;
/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetCopyWith<Pet> get copyWith => _$PetCopyWithImpl<Pet>(this as Pet, _$identity);

  /// Serializes this Pet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,breed,imageUrl,description);

@override
String toString() {
  return 'Pet(id: $id, name: $name, age: $age, breed: $breed, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $PetCopyWith<$Res>  {
  factory $PetCopyWith(Pet value, $Res Function(Pet) _then) = _$PetCopyWithImpl;
@useResult
$Res call({
 String id, String name, int age, String breed, String imageUrl, String description
});




}
/// @nodoc
class _$PetCopyWithImpl<$Res>
    implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._self, this._then);

  final Pet _self;
  final $Res Function(Pet) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? age = null,Object? breed = null,Object? imageUrl = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Pet].
extension PetPatterns on Pet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Dog value)?  dog,TResult Function( Cat value)?  cat,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Dog() when dog != null:
return dog(_that);case Cat() when cat != null:
return cat(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Dog value)  dog,required TResult Function( Cat value)  cat,}){
final _that = this;
switch (_that) {
case Dog():
return dog(_that);case Cat():
return cat(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Dog value)?  dog,TResult? Function( Cat value)?  cat,}){
final _that = this;
switch (_that) {
case Dog() when dog != null:
return dog(_that);case Cat() when cat != null:
return cat(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description)?  dog,TResult Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description,  bool isIndoor)?  cat,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Dog() when dog != null:
return dog(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description);case Cat() when cat != null:
return cat(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description,_that.isIndoor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description)  dog,required TResult Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description,  bool isIndoor)  cat,}) {final _that = this;
switch (_that) {
case Dog():
return dog(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description);case Cat():
return cat(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description,_that.isIndoor);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description)?  dog,TResult? Function( String id,  String name,  int age,  String breed,  String imageUrl,  String description,  bool isIndoor)?  cat,}) {final _that = this;
switch (_that) {
case Dog() when dog != null:
return dog(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description);case Cat() when cat != null:
return cat(_that.id,_that.name,_that.age,_that.breed,_that.imageUrl,_that.description,_that.isIndoor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class Dog implements Pet {
  const Dog({required this.id, required this.name, required this.age, required this.breed, required this.imageUrl, required this.description, final  String? $type}): $type = $type ?? 'dog';
  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

@override final  String id;
@override final  String name;
@override final  int age;
@override final  String breed;
@override final  String imageUrl;
@override final  String description;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DogCopyWith<Dog> get copyWith => _$DogCopyWithImpl<Dog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dog&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,breed,imageUrl,description);

@override
String toString() {
  return 'Pet.dog(id: $id, name: $name, age: $age, breed: $breed, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $DogCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) _then) = _$DogCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int age, String breed, String imageUrl, String description
});




}
/// @nodoc
class _$DogCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._self, this._then);

  final Dog _self;
  final $Res Function(Dog) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? breed = null,Object? imageUrl = null,Object? description = null,}) {
  return _then(Dog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class Cat implements Pet {
  const Cat({required this.id, required this.name, required this.age, required this.breed, required this.imageUrl, required this.description, required this.isIndoor, final  String? $type}): $type = $type ?? 'cat';
  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

@override final  String id;
@override final  String name;
@override final  int age;
@override final  String breed;
@override final  String imageUrl;
@override final  String description;
 final  bool isIndoor;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatCopyWith<Cat> get copyWith => _$CatCopyWithImpl<Cat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cat&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.isIndoor, isIndoor) || other.isIndoor == isIndoor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,breed,imageUrl,description,isIndoor);

@override
String toString() {
  return 'Pet.cat(id: $id, name: $name, age: $age, breed: $breed, imageUrl: $imageUrl, description: $description, isIndoor: $isIndoor)';
}


}

/// @nodoc
abstract mixin class $CatCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory $CatCopyWith(Cat value, $Res Function(Cat) _then) = _$CatCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int age, String breed, String imageUrl, String description, bool isIndoor
});




}
/// @nodoc
class _$CatCopyWithImpl<$Res>
    implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._self, this._then);

  final Cat _self;
  final $Res Function(Cat) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? breed = null,Object? imageUrl = null,Object? description = null,Object? isIndoor = null,}) {
  return _then(Cat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isIndoor: null == isIndoor ? _self.isIndoor : isIndoor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
