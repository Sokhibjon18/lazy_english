import 'package:flutter/material.dart';
import 'package:lazy_english/features/challange/pages/challange_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChallangePage(),
    );
  }
}
