// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';

import 'package:site/components/filters_sorting.dart'
    deferred as _filters_sorting;
import 'package:site/components/pet_card.dart' deferred as _pet_card;
import 'package:site/model_override.dart' as _model_override;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  clients: {
    'filters_sorting': ClientLoader(
      (p) => _filters_sorting.FiltersAndSorting(),
      loader: _filters_sorting.loadLibrary,
    ),
    'pet_card': ClientLoader(
      (p) => _pet_card.PetCard(
        _model_override.PetOverride.decode(p['pet'] as Map<String, dynamic>),
      ),
      loader: _pet_card.loadLibrary,
    ),
  },
);
