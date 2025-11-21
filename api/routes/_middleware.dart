import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';

final _petsRepository = PetsRepository();

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(
        provider<PetsRepository>((_) => _petsRepository),
      );
}
