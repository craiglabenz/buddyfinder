import 'package:jaspr/jaspr.dart';

class FiltersAndSorting extends StatelessComponent {
  const FiltersAndSorting({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', [
      div(classes: 'filters-container', [
        div(classes: 'filters-group', [
          div(classes: 'select-wrapper', [
            select(classes: 'custom-select', [
              option([
                text('Animal Type'),
              ]),
              option([
                text('Dog'),
              ]),
              option([
                text('Cat'),
              ]),
            ]),
            div(classes: 'select-arrow', [
              i(classes: 'fa-solid fa-caret-down', []),
            ]),
          ]),
          div(classes: 'select-wrapper', [
            select(classes: 'custom-select', [
              option([
                text('Breed'),
              ]),
              option([
                text('Retriever'),
              ]),
              option([
                text('Shepherd'),
              ]),
            ]),
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
                text('Puppy'),
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
