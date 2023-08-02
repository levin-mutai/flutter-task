import 'package:flutter/material.dart';
import 'package:notes/screens/list_notes.dart';
import 'package:notes/screens/view_notes.dart';

//A function that returns the routes to each screen in the app

Map<String, WidgetBuilder> getRoutes() {
  var routes = <String, WidgetBuilder>{
    ListNotes.id: (context) => const ListNotes(),
    ViewNotes.id: (context) => const ViewNotes(),
  };
  return routes;
}
