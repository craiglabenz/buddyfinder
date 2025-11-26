import 'package:jaspr/jaspr.dart';
import 'package:site/components/filters_sorting.dart';
import 'package:site/components/pets_section.dart';
import '../components/hero.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const Hero(),
      const FiltersAndSorting(),
      PetsSection(),
    ]);
  }
}
