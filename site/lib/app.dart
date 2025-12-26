import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart'; // Added for div, classes, etc.
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    // This method is rerun every time the component is rebuilt.

    // Renders a <div class="main"> html element with children.
    return div(classes: 'main', [
      const Header(),
      Router(
        routes: [
          Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
          Route(
            path: '/dogs',
            title: 'Find a Dog',
            builder: (context, state) => const Home(petType: .dog),
          ),
          Route(
            path: '/cats',
            title: 'Find a Cat',
            builder: (context, state) => const Home(petType: .cat),
          ),
          Route(
            path: '/breeds/:breed',
            title: 'Find by Breed',
            builder: (context, state) => Home(breed: state.params['breed']),
          ),
          Route(path: '/about', title: 'About', builder: (context, state) => const AboutPage()),
        ],
      ),
    ]);
  }

  // Defines the css styles for elements of this component.
  //
  // By using the @css annotation, these will be rendered automatically to css inside the <head> of your page.
  // Must be a variable or getter of type [List<StyleRule>].
  @css
  static List<StyleRule> get styles => [];
}
