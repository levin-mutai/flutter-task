import 'package:flutter/material.dart';

import '../const.dart';

class ViewNotes extends StatefulWidget {
  const ViewNotes({super.key});
  static String id = 'view-notes';

  @override
  State<ViewNotes> createState() => _ViewNotesState();
}

class _ViewNotesState extends State<ViewNotes> {
  Future<void> delete() async {
    /*
        * Function to simulate delay from network request before going back to
        the previous screen

    */
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    String title = data['title'];
    String body = data['body'];
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
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Title(
              color: Colors.black,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
          Expanded(child: Text(body)),
          IconButton(
            onPressed: delete,
            icon: const Icon(Icons.delete_rounded),
            tooltip: "delete task",
            color: Colors.red,
            iconSize: 32,
          )
        ]),
      )),
    );
  }
}
