import 'package:flutter/material.dart';
import 'package:notes/screens/view_notes.dart';

import '../const.dart';

class NoteCard extends StatelessWidget {
  /*

     * This is a widget to display a card that will take two arguemnts: title
     * and body

    */
  const NoteCard({super.key, required this.body, required this.title});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //navigate to the  view notes page using named route

        Navigator.pushNamed(context, ViewNotes.id,
            arguments: {'title': title, 'body': body});
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 15,
        ),
        child: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Title(
                          color: kprimaryColor,
                          child: Expanded(
                            child: Text(title,
                                overflow: TextOverflow.fade,
                                softWrap: true,
                                maxLines: 2,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 19,
                                    color: kprimaryColor,
                                    fontWeight: FontWeight.w600)),
                          )),
                      const SizedBox(
                        height: 1,
                      ),
                      Expanded(
                        child: Text(
                          body,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
