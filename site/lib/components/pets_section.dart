import 'package:jaspr/server.dart';
import 'package:shared/shared.dart';
import 'package:site/components/pet_card.dart';
import '../services/pet_service.dart';

class PetsSection extends AsyncStatelessComponent {
  const PetsSection({this.petType, this.breed, super.key});

  final PetType? petType;
  final String? breed;

  @override
  Future<Component> build(BuildContext context) async {
    final pets = await PetService().getPets(type: petType, breed: breed);
    return div(classes: 'container grid-section', [
      // <!-- Grid Section -->
      h2(classes: 'section-title', [text('Pets Near You')]),
      div(classes: 'pet-grid', [
        for (final pet in pets) PetCard(pet),
      ]),
    ]);
  }
}
