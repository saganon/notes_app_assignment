import 'package:flutter/material.dart';

import '../../common/constants/notes_list.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesList();
}

class _NotesList extends State<NotesList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: notesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        notesList[index].title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        notesList[index].isFavorite
                            ? 'assets/images/icons/favorite.png'
                            : 'assets/images/icons/not-favorite.png',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                  Text(
                    notesList[index].description1,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  notesList[index].description2 != null
                      ? Text(
                          notesList[index].description2!,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        )
                      : Container(),
                  notesList[index].isSeeMore
                      ? const Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'See more..',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        )
                      : Container()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
