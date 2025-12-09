import 'package:jaspr/jaspr.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Component build(BuildContext context) {
    return main_(
      [
        link(href: 'styles/about.css', rel: 'stylesheet'),
        section(classes: 'hero-section', [
          div(classes: 'hero-overlay', []),
          div(classes: 'hero-content container', [
            h1([
              text('Connecting Paws with Loving Hands'),
            ]),
            p([
              text(
                'We are on a mission to empty shelters and ensure every pet finds the safe, loving forever home they deserve.',
              ),
            ]),
            a(classes: 'btn btn-primary', href: '#', [
              text('Join Our Mission'),
            ]),
          ]),
        ]),
        section(classes: 'stats-section', [
          div(classes: 'stats-container', [
            div(classes: 'stat-item', [
              h2([
                text('15K+'),
              ]),
              p([
                text('Pets Rehomed'),
              ]),
            ]),
            div(classes: 'stat-item', [
              h2([
                text('500+'),
              ]),
              p([
                text('Partner Shelters'),
              ]),
            ]),
            div(classes: 'stat-item', [
              h2([
                text('98%'),
              ]),
              p([
                text('Match Success'),
              ]),
            ]),
            div(classes: 'stat-item', [
              h2([
                text('12'),
              ]),
              p([
                text('Counties Served'),
              ]),
            ]),
          ]),
        ]),
        section(classes: 'core-mission-section', [
          div(classes: 'container', [
            h2([
              text('Our Core Mission'),
            ]),
            p([
              text(
                'At BuddyFinder, we believe that every animal deserves a second chance. Our platform simplifies the path to adoption, making the search, application, and final adoption process seamless, transparent, and joyful for both the pet and the adopter.',
              ),
            ]),
            div(classes: 'mission-features', [
              div(classes: 'feature-card', [
                span(classes: 'feature-icon icon-verified', []),
                h3([
                  text('Verified Shelters'),
                ]),
                p([
                  text('We partner only with certified 501(c)(3) rescue organizations to ensure ethical practices.'),
                ]),
              ]),
              div(classes: 'feature-card', [
                span(classes: 'feature-icon icon-health', []),
                h3([
                  text('Health First'),
                ]),
                p([
                  text(
                    'Every pet listed on BuddyFinder comes with a transparent, up-to-date veterinary medical history.',
                  ),
                ]),
              ]),
              div(classes: 'feature-card', [
                span(classes: 'feature-icon icon-support', []),
                h3([
                  text('Lifetime Support'),
                ]),
                p([
                  text(
                    'From initial selection to post-adoption recommendations, we guide you each step, giving them the best life.',
                  ),
                ]),
              ]),
            ]),
          ]),
        ]),
        section(classes: 'where-it-all-started', [
          div(classes: 'container', [
            h2([
              text('Where It All Started'),
            ]),
            div(classes: 'story-container', [
              div(classes: 'story-image', []),
              div(classes: 'story-text', [
                p([
                  text(
                    'It began with a stray terrier named \'Barnaby.\' When our founders, Sarah and Mike, found him shivering outside their office, they discovered how difficult it was to navigate the local shelter system.',
                  ),
                ]),
                p([
                  text(
                    'They built BuddyFinder to fix a broken system, starting by digitizing adoption records. What began as three local shelters has grown into a global network connecting thousands of animals with their future best friends.',
                  ),
                ]),
              ]),
            ]),
          ]),
        ]),
        section(classes: 'meet-the-pack-section', [
          div(classes: 'container', [
            h2([
              text('Meet the Pack'),
            ]),
            p([
              text('The humans (and animals) working behind the scenes.'),
            ]),
            div(classes: 'team-members', [
              div(classes: 'member-card', [
                div(classes: 'member-photo', []),
                h3([
                  text('Sarah Jenkins'),
                ]),
                p([
                  text('Co-Founder & CEO'),
                ]),
              ]),
              div(classes: 'member-card', [
                div(classes: 'member-photo', []),
                h3([
                  text('Mike Ross'),
                ]),
                p([
                  text('Co-Founder & CTO'),
                ]),
              ]),
              div(classes: 'member-card', [
                div(classes: 'member-photo', []),
                h3([
                  text('Elena Rodriguez'),
                ]),
                p([
                  text('Lead Developer'),
                ]),
              ]),
              div(classes: 'member-card', [
                div(classes: 'member-photo', []),
                h3([
                  text('Barnaby'),
                ]),
                p(classes: 'title-barnaby', [
                  text('Chief Morale Officer'),
                ]),
              ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
