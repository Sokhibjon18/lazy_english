import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/timer_widget.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/sentence_match_page.dart';
import 'features/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SentenceMatchPage(),
    );
  }
}
