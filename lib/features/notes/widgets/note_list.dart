import 'package:flutter/material.dart';
import 'package:flutter_learn/features/notes/models/note_model.dart';
import 'note_card.dart';

class NoteList extends StatelessWidget {
  final List<Note> notes;

  const NoteList({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    if (notes.isEmpty) {
      return const Center(child: Text('No notes yet'));
    }

    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, i) {
        return NoteCard(title: notes[i].title, content: notes[i].content);
      },
    );
  }
}
