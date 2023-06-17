import 'package:flutter/material.dart';
import 'widgets/level_widget.dart';
import 'widgets/vocabulary_widget.dart';

class SentenceMatchPage extends StatefulWidget {
  const SentenceMatchPage({super.key});

  @override
  State<SentenceMatchPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SentenceMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            LevelWidget(),
            VocabularyWidget(),
          ],
        ),
      ),
    );
  }
}
