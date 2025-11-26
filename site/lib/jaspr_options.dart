// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:site/components/header.dart' as prefix0;
import 'package:site/components/pet_card.dart' as prefix1;
import 'package:site/app.dart' as prefix2;
import 'package:site/model_override.dart' as prefix3;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix1.PetCard: ClientTarget<prefix1.PetCard>(
      'components/pet_card',
      params: _prefix1PetCard,
    ),
  },
  styles: () => [...prefix0.Header.styles, ...prefix2.App.styles],
);

Map<String, dynamic> _prefix1PetCard(prefix1.PetCard c) => {
  'pet': prefix3.PetOverride(c.pet).encode(),
};
