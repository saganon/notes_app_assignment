import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:notes_app_assignment/data/models/notes_list.dart';

class NoteDetail extends StatefulWidget {
  final NotesModel note;
  const NoteDetail({
    super.key,
    required this.note,
  });

  @override
  State<NoteDetail> createState() => _NoteDetail();
}

class _NoteDetail extends State<NoteDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.orange.shade800,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        onPressed: () {
          final anchorContext =
              AnchorKey.forId(staticAnchorKey, "bottom")?.currentContext;
          if (anchorContext != null) {
            Scrollable.ensureVisible(anchorContext);
          }
        },
        child: const Icon(
          Icons.arrow_downward,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(
          left: 30.0,
          top: 50.0,
          right: 30.0,
          bottom: 30.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 5.0,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      'assets/images/icons/back.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.note.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/icons/edit.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange.shade800,
                    width: 2,
                  ),
                ),
              ),
            ),
            Expanded(child: _content(widget.note.description1))
          ],
        ),
      ),
    );
  }

  final staticAnchorKey = GlobalKey();

  SingleChildScrollView _content(String data) {
    return SingleChildScrollView(
      child: Html(
        anchorKey: staticAnchorKey,
        data: data,
        style: {
          ".bold-text": Style(
            fontWeight: FontWeight.bold,
          ),
        },
      ),
    );
  }
}
