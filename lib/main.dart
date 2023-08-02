import 'package:flutter/material.dart';
import 'package:notes/routes/screen_routes.dart';
import 'package:notes/screens/list_notes.dart';
import 'package:notes/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData inversePrimaryTheme = ThemeData(
        primaryColor: kprimaryColor,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor));
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: inversePrimaryTheme,
      initialRoute: ListNotes.id,
      routes: getRoutes(),
    );
  }
}
