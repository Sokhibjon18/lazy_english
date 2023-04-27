import 'package:flutter/material.dart';
import 'features/splash/splash_page.dart';
import 'features/start_lesson/sentence_match/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}
