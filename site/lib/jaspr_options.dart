// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:site/components/filters_sorting.dart' as prefix0;
import 'package:site/components/header.dart' as prefix1;
import 'package:site/components/pet_card.dart' as prefix2;
import 'package:site/app.dart' as prefix3;
import 'package:site/model_override.dart' as prefix4;

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
    prefix0.FiltersAndSorting: ClientTarget<prefix0.FiltersAndSorting>(
      'components/filters_sorting',
    ),

    prefix2.PetCard: ClientTarget<prefix2.PetCard>(
      'components/pet_card',
      params: _prefix2PetCard,
    ),
  },
  styles: () => [...prefix1.Header.styles, ...prefix3.App.styles],
);

Map<String, dynamic> _prefix2PetCard(prefix2.PetCard c) => {
  'pet': prefix4.PetOverride(c.pet).encode(),
};
