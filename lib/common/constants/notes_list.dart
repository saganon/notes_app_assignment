import 'package:notes_app_assignment/data/models/notes_list.dart';

final notes1 = NotesModel(
  title: 'School Assignment',
  description1:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...',
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: true,
  isSeeMore: true,
);

final notes2 = NotesModel(
  title: 'Class notes',
  description1: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: true,
  isSeeMore: false,
);

final notes3 = NotesModel(
  title: 'Story planning',
  description1:
      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  description2:
      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat',
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: false,
  isSeeMore: true,
);

final notesList = [notes1, notes2, notes3];
