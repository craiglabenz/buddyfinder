import 'package:api_data/api_data.dart';
import 'package:dart_frog/dart_frog.dart';

final _petsRepository = PetsRepository();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<PetsRepository>((_) => _petsRepository))
      .use(_cors);
}

Handler _cors(Handler handler) {
  return (context) async {
    if (context.request.method == HttpMethod.options) {
      return Response(headers: {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
        'Access-Control-Allow-Headers': 'Origin, Content-Type',
      });
    }
    final response = await handler(context);
    return response.copyWith(
      headers: {
        ...response.headers,
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
        'Access-Control-Allow-Headers': 'Origin, Content-Type',
      },
    );
  };
}
