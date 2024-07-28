import 'package:notes_app_assignment/data/models/notes_list.dart';

final notes1 = NotesModel(
  title: 'School Assignment',
  highlight: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  description1:
      r""" <h2><span style='color: white;'>Chapter 1 - Introductions</span></h2>
      <p style="text-align: justify;"><span style='color: white;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style="color: rgba(239,108,0,1);">Fames ac turpis egestas integer eget aliquet nibh praesent.</span></p>
      <img src='asset:assets/images/example-image.png' /> 
      <p style="text-align: justify;"><span style='color: white;'>Vivamus at augue eget arcu dictum varius duis at. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Ut lectus arcu bibendum at varius vel pharetra vel turpis.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Enim nec dui nunc mattis enim ut tellus elementum.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Fermentum et sollicitudin.</span></p>
      """,
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: true,
  isSeeMore: true,
);

final notes2 = NotesModel(
  title: 'Class notes',
  highlight: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  description1:
      r""" <h2><span style='color: white;'>Chapter 1 - Introductions</span></h2>
      <p style="text-align: justify;"><span style='color: white;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style="color: rgba(239,108,0,1);">Fames ac turpis egestas integer eget aliquet nibh praesent.</span></p>
      <img src='asset:assets/images/example-image.png' /> 
      <p style="text-align: justify;"><span style='color: white;'>Vivamus at augue eget arcu dictum varius duis at. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Ut lectus arcu bibendum at varius vel pharetra vel turpis.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Enim nec dui nunc mattis enim ut tellus elementum.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Fermentum et sollicitudin.</span></p>
      """,
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: true,
  isSeeMore: false,
);

final notes3 = NotesModel(
  title: 'Story planning',
  highlight: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  description1:
      r""" <h2><span style='color: white;'>Chapter 1 - Introductions</span></h2>
      <p style="text-align: justify;"><span style='color: white;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style="color: rgba(239,108,0,1);">Fames ac turpis egestas integer eget aliquet nibh praesent.</span></p>
      <img src='asset:assets/images/example-image.png' /> 
      <p style="text-align: justify;"><span style='color: white;'>Vivamus at augue eget arcu dictum varius duis at. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Ut lectus arcu bibendum at varius vel pharetra vel turpis.</span></p>
      <p class="bold-text" style="text-align: justify;"><span style='color: white;'>Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Enim nec dui nunc mattis enim ut tellus elementum.</span></p>
      <p style="text-align: justify;"><span style='color: white;'>Fermentum et sollicitudin.</span></p>
      """,
  description2:
      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat',
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  isFavorite: false,
  isSeeMore: true,
);

final notesList = [notes1, notes2, notes3];
