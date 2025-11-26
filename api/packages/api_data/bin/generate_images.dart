import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:args/args.dart';

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      'limit',
      abbr: 'l',
      help: 'Limit the number of images to generate',
    );

  final results = parser.parse(args);
  final limitStr = results['limit'];
  int? limit;
  if (limitStr != null) {
    limit = int.tryParse(limitStr);
    if (limit == null) {
      print('Invalid limit value: $limitStr');
      exit(1);
    }
  }

  final jsonFile = File('../lib/pets.json');
  // api/packages/api_data/tool/../../../../api/public -> api/public
  // Script is likely run from api/packages/api_data
  final publicDir = Directory('../../../public');

  if (!jsonFile.existsSync()) {
    print('Error: pets.json not found at ${jsonFile.absolute.path}');
    return;
  }

  if (!publicDir.existsSync()) {
    print('Creating public directory...');
    publicDir.createSync(recursive: true);
  }

  final jsonContent = jsonFile.readAsStringSync();
  final List<dynamic> pets = jsonDecode(jsonContent);

  print('Checking ${pets.length} pets...');

  int numSkipped = 0;
  int numGenerated = 0;
  final generationFutures = <Future<void>>[];
  for (final pet in pets) {
    final name = pet['name'] as String;
    final breed = pet['breed'] as String;
    final description = pet['description'] as String;
    final type = pet['runtimeType'] as String; // 'dog' or 'cat'

    // Filename from JSON or derived
    String filename = pet['imageUrl'] ?? '${name.toLowerCase()}.jpg';

    final targetFile = File('${publicDir.path}/$filename');

    if (targetFile.existsSync()) {
      numSkipped++;
      continue;
    }

    if (limit != null && numGenerated >= limit) {
      print('Limit of $limit reached. Stopping.');
      break;
    }

    numGenerated++;

    // Output format: GENERATE|name|filename|prompt
    print('Generating $filename...');

    final apiKey = Platform.environment['GEMINI_API_KEY'];
    if (apiKey == null) {
      print('Error: GEMINI_API_KEY environment variable not set.');
      exit(1);
    }

    final url = Uri.parse(
      // 'https://generativelanguage.googleapis.com/v1beta/models/nano-banana-pro-preview:generateContent?key=$apiKey',
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-3-pro-image-preview:generateContent?key=$apiKey',
    );

    // Construct prompt
    final prompt =
        'Realistic and adorable $breed $type named $name in a kennel but not in a cage, looking '
        'hopeful and ready to be adopted. No bars over face - clear view of  eyes. '
        '\n$description. '
        'Do not include any humans in the photo! Do not include any other '
        'animals.';
    final responseFuture = http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'contents': [
          {
            'parts': [
              {'text': prompt},
            ],
          },
        ],
      }),
    );

    generationFutures.add(responseFuture);
    responseFuture.then((response) {
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final candidates = jsonResponse['candidates'] as List;
        if (candidates.isNotEmpty) {
          final parts = candidates[0]['content']['parts'] as List;
          String? bytesBase64;
          for (final part in parts) {
            if (part.containsKey('inlineData')) {
              bytesBase64 = part['inlineData']['data'];
              break;
            }
          }

          if (bytesBase64 != null) {
            final bytes = base64Decode(bytesBase64);
            targetFile.writeAsBytesSync(bytes);
            print('Saved to ${targetFile.path}');
          } else {
            print('No image data found for $name');
          }
        } else {
          print('No candidates found for $name');
        }
      } else {
        print(
          'Failed to generate image for $name: ${response.statusCode} ${response.body}',
        );
      }
    });
  }
  print('Skipped $numSkipped existing photos');
  await Future.wait(generationFutures);
}
