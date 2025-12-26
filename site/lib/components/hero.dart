import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'container hero-section', [
      div(classes: 'hero', [
        h1([
          Component.text('Your Bestest Buddy is'),
          br(),
          Component.text('Waiting'),
        ]),
        p([
          Component.text("Find and adopt a pet you'll love. Start your search to meet your new companion."),
        ]),

        // <!-- Search Bar -->
        div(classes: 'search-bar', [
          div(classes: 'search-icon', [
            i(classes: 'fa-solid fa-magnifying-glass', []),
          ]),
          input(
            type: InputType.text,
            classes: 'search-input',
            attributes: {'placeholder': 'Search by city, state, or zip'},
          ),
          button(classes: 'search-btn', [
            Component.text('Search'),
          ]),
        ]),
      ]),
    ]);
  }
}
