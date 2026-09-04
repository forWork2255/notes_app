import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/widgets/custom_app_bar.dart';
import 'package:news_app_ui_setup/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 16,
          ),
          CustomNoteItem(),
        ],
      ),
    );
  }
}

