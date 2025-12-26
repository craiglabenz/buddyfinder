// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:site/components/filters_sorting.dart' as _filters_sorting;
import 'package:site/components/header.dart' as _header;
import 'package:site/components/pet_card.dart' as _pet_card;
import 'package:site/app.dart' as _app;
import 'package:site/model_override.dart' as _model_override;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _filters_sorting.FiltersAndSorting:
        ClientTarget<_filters_sorting.FiltersAndSorting>('filters_sorting'),
    _pet_card.PetCard: ClientTarget<_pet_card.PetCard>(
      'pet_card',
      params: __pet_cardPetCard,
    ),
  },
  styles: () => [..._header.Header.styles, ..._app.App.styles],
);

Map<String, Object?> __pet_cardPetCard(_pet_card.PetCard c) => {
  'pet': _model_override.PetOverride(c.pet).encode(),
};
