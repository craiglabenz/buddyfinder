import 'package:jaspr/jaspr.dart';
import 'package:shared/shared.dart';

@client
class PetCard extends StatelessComponent {
  const PetCard(this.pet, {super.key});

  final Pet pet;

  @override
  Component build(BuildContext context) {
    if (kIsWeb) {
      print('Hello from Jaspr on the client!');
    }

    return div(classes: 'card', [
      div(classes: 'card-image-wrapper', [
        img(
          src: 'http://localhost:8888/${pet.imageUrl}',
          alt: pet.name,
          classes: 'card-image',
        ),
        button([
          i(classes: 'fa-solid fa-heart', []),
        ]),
      ]),
      div(classes: 'card-content', [
        h3(classes: 'card-title', [
          text(pet.name),
        ]),
        p(classes: 'card-details', [
          text('${pet.breed}, ${pet.age}'),
        ]),
        p(classes: 'card-desc', [
          text(pet.description),
        ]),
      ]),
    ]);
  }
}
