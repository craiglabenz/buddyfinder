import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;

    return section([
      // <!-- Navigation -->
      nav(classes: 'navbar', [
        div(classes: 'container navbar-content', [
          // <!-- Logo -->
          div(classes: 'logo', [
            img(src: 'images/logo.png', width: 160),
          ]),

          // <!-- Nav Links -->
          div(classes: 'nav-links', [
            a(href: '/dogs', classes: activePath == '/dogs' ? 'active' : '', [text('Find a Dog')]),
            a(href: '/cats', classes: activePath == '/cats' ? 'active' : '', [text('Find a Cat')]),
            a(href: '/about', classes: activePath == '/about' ? 'active' : '', [text('About Us')]),
          ]),

          // <!-- Action Buttons -->
          div(classes: 'nav-actions', [
            button(classes: 'btn-primary', [text('Login')]),
            button(classes: 'btn-icon', [
              i(classes: 'fa-solid fa-heart', []),
            ]),
            // <!-- Mobile menu button -->
            button(classes: 'mobile-menu-btn', [
              i(classes: 'fa-solid fa-bars', []),
            ]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [];
}
