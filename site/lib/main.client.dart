import 'package:jaspr/client.dart';
import 'manual_client_options.dart';

import 'app.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultClientOptions,
  );

  runApp(
    const App(),
  );
}
