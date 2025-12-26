import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
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
                  Component.text('Animal Type'),
                ]),
                option(value: 'dogs', [
                  Component.text('Dog'),
                ]),
                option(value: 'cats', [
                  Component.text('Cat'),
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
                option([Component.text('Breed')]),
                option([Component.text('Abyssinian')]),
                option([Component.text('American Shorthair')]),
                option([Component.text('Australian Shepherd')]),
                option([Component.text('Beagle')]),
                option([Component.text('Bengal')]),
                option([Component.text('Birman')]),
                option([Component.text('Border Collie')]),
                option([Component.text('Boston Terrier')]),
                option([Component.text('Boxer')]),
                option([Component.text('British Shorthair')]),
                option([Component.text('Bulldog')]),
                option([Component.text('Burmese')]),
                option([Component.text('Cavalier King Charles Spaniel')]),
                option([Component.text('Corgi')]),
                option([Component.text('Cornish Rex')]),
                option([Component.text('Dachshund')]),
                option([Component.text('Devon Rex')]),
                option([Component.text('Doberman Pinscher')]),
                option([Component.text('German Shepherd')]),
                option([Component.text('Golden Retriever')]),
                option([Component.text('Great Dane')]),
                option([Component.text('Himalayan')]),
                option([Component.text('Labrador Retriever')]),
                option([Component.text('Maine Coon')]),
                option([Component.text('Manx')]),
                option([Component.text('Miniature Schnauzer')]),
                option([Component.text('Norwegian Forest Cat')]),
                option([Component.text('Oriental Shorthair')]),
                option([Component.text('Persian')]),
                option([Component.text('Pomeranian')]),
                option([Component.text('Poodle')]),
                option([Component.text('Ragdoll')]),
                option([Component.text('Rottweiler')]),
                option([Component.text('Russian Blue')]),
                option([Component.text('Scottish Fold')]),
                option([Component.text('Shih Tzu')]),
                option([Component.text('Siamese')]),
                option([Component.text('Siberian Husky')]),
                option([Component.text('Sphynx')]),
                option([Component.text('Turkish Angora')]),
              ],
            ),
            div(classes: 'select-arrow', [
              i(classes: 'fa-solid fa-caret-down', []),
            ]),
          ]),
          div(classes: 'select-wrapper', [
            select(classes: 'custom-select', [
              option([
                Component.text('Age'),
              ]),
              option([
                Component.text('Puppy / Kitten'),
              ]),
              option([
                Component.text('Young'),
              ]),
              option([
                Component.text('Adult'),
              ]),
              option([
                Component.text('Senior'),
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
              Component.text('Sort By: Newest'),
            ]),
            option([
              Component.text('Sort By: Oldest'),
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
