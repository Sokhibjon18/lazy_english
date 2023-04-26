import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/voice_match/pages/voice_match_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VoiceMatchPage(),
    );
  }
}
