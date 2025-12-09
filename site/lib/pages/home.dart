import 'package:jaspr/jaspr.dart';
import 'package:shared/shared.dart';
import 'package:site/components/filters_sorting.dart';
import 'package:site/components/pets_section.dart';
import '../components/hero.dart';

class Home extends StatelessComponent {
  const Home({super.key, this.breed, this.petType});

  final PetType? petType;
  final String? breed;

  @override
  Component build(BuildContext context) {
    return div([
      const Hero(),
      const FiltersAndSorting(),
      PetsSection(petType: petType, breed: breed),
    ]);
  }
}
