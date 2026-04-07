import 'package:flutter/material.dart';
import 'package:flutter_learn/features/notes/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Notes',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
