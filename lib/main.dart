import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news_app_ui_setup/constants.dart';
import 'package:news_app_ui_setup/models/note_model.dart';
import 'package:news_app_ui_setup/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NotesView(),
    );
  }
}
