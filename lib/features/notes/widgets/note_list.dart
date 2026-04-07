import 'package:flutter/material.dart';
import 'note_card.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = [
      {'title': 'Note 1', 'content': 'Content 1'},
      {'title': 'Note 2', 'content': 'Content 2'},
      {'title': 'Note 3', 'content': 'Content 3'},
    ];

    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return NoteCard(
          title: notes[index]['title']!,
          content: notes[index]['content']!,
        );
      },
    );
  }
}
