import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart';
import 'package:site/utils.dart';

@client
class FiltersAndSorting extends StatelessComponent {
  const FiltersAndSorting({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', [
      div(classes: 'filters-container', [
        div(classes: 'filters-group', [
          div(classes: 'select-wrapper', [
            select(
              classes: 'custom-select',
              onChange: (event) {
                window.location.href = '/${event.first}';
              },
              [
                option([
                  text('Animal Type'),
                ]),
                option(value: 'dogs', [
                  text('Dog'),
                ]),
                option(value: 'cats', [
                  text('Cat'),
                ]),
              ],
            ),
            div(classes: 'select-arrow', [
              i(classes: 'fa-solid fa-caret-down', []),
            ]),
          ]),
          div(classes: 'select-wrapper', [
            select(
              classes: 'custom-select',
              onChange: (event) {
                window.location.href = '/breeds/${slugify(event.first)}';
              },
              [
                option([text('Breed')]),
                option([text('Abyssinian')]),
                option([text('American Shorthair')]),
                option([text('Australian Shepherd')]),
                option([text('Beagle')]),
                option([text('Bengal')]),
                option([text('Birman')]),
                option([text('Border Collie')]),
                option([text('Boston Terrier')]),
                option([text('Boxer')]),
                option([text('British Shorthair')]),
                option([text('Bulldog')]),
                option([text('Burmese')]),
                option([text('Cavalier King Charles Spaniel')]),
                option([text('Corgi')]),
                option([text('Cornish Rex')]),
                option([text('Dachshund')]),
                option([text('Devon Rex')]),
                option([text('Doberman Pinscher')]),
                option([text('German Shepherd')]),
                option([text('Golden Retriever')]),
                option([text('Great Dane')]),
                option([text('Himalayan')]),
                option([text('Labrador Retriever')]),
                option([text('Maine Coon')]),
                option([text('Manx')]),
                option([text('Miniature Schnauzer')]),
                option([text('Norwegian Forest Cat')]),
                option([text('Oriental Shorthair')]),
                option([text('Persian')]),
                option([text('Pomeranian')]),
                option([text('Poodle')]),
                option([text('Ragdoll')]),
                option([text('Rottweiler')]),
                option([text('Russian Blue')]),
                option([text('Scottish Fold')]),
                option([text('Shih Tzu')]),
                option([text('Siamese')]),
                option([text('Siberian Husky')]),
                option([text('Sphynx')]),
                option([text('Turkish Angora')]),
              ],
            ),
            div(classes: 'select-arrow', [
              i(classes: 'fa-solid fa-caret-down', []),
            ]),
          ]),
          div(classes: 'select-wrapper', [
            select(classes: 'custom-select', [
              option([
                text('Age'),
              ]),
              option([
                text('Puppy / Kitten'),
              ]),
              option([
                text('Young'),
              ]),
              option([
                text('Adult'),
              ]),
              option([
                text('Senior'),
              ]),
            ]),
            div(classes: 'select-arrow', [
              i(classes: 'fa-solid fa-caret-down', []),
            ]),
          ]),
        ]),
        div(classes: 'select-wrapper sort-wrapper', [
          select([
            option([
              text('Sort By: Newest'),
            ]),
            option([
              text('Sort By: Oldest'),
            ]),
          ]),
          div(classes: 'select-arrow', [
            i(classes: 'fa-solid fa-caret-down', []),
          ]),
        ]),
      ]),
    ]);
  }
}
