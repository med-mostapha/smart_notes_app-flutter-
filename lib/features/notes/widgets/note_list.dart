import 'package:flutter/material.dart';
import 'note_card.dart';

class NoteList extends StatelessWidget {
  final List<Map<String, String>> notes;

  const NoteList({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    if (notes.isEmpty) {
      return const Center(child: Text('No notes yet'));
    }

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
