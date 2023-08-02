import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/widgets/note_card.dart';

import '../const.dart';

class ListNotes extends StatefulWidget {
  const ListNotes({super.key});
  static String id = 'listing';
  @override
  State<ListNotes> createState() => _ListNotesState();
}

class _ListNotesState extends State<ListNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value of the Theme's primary color that was set in the main.dart file.
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Notes",
          style: TextStyle(color: ksecondaryColor),
        ),
      ),
      body: Center(
          child: ListView(
        children: const [
          NoteCard(
            title: 'FlexBox',
            body:
                'Flexbox is no longer an advanced topic in CSS. Today, we will use a variety of real-world examples.',
          ),
          NoteCard(
            title: 'Event Arguments',
            body:
                'Its sometimes useful to emit a specific value with an event. For example, we may want.',
          ),
          NoteCard(
            title: 'This and That',
            body:
                'Its sometimes useful to emit a specific value with an event. For example, we may want.',
          ),
        ],
      )),

      // Floating Action Bar to add new notes
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimaryColor,
        foregroundColor: ksecondaryColor,
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
