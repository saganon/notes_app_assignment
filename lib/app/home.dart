import 'package:flutter/material.dart';
import 'package:notes_app_assignment/app/notes/notes_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(
        left: 30.0,
        top: 50.0,
        right: 30.0,
        bottom: 30.0,
      ),
      child: const Column(
        children: [NotesList()],
      ),
    );
  }
}
