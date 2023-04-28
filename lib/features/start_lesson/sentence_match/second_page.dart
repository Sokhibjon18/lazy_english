import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/lists.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/widgets/check_answer_tab.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/widgets/level_widget.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/widgets/vocabulary_widget.dart';

class SentenceMatchPage extends StatefulWidget {
  const SentenceMatchPage({super.key});

  @override
  State<SentenceMatchPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SentenceMatchPage> {
  bool compareLists(List list1, List list2) {
    if (list1.length != list2.length ||
        list1.runtimeType != list2.runtimeType) {
      return false;
    }
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }

    return true;
  }

  List<String> separatevocabulary(String text) {
    List<String> vocabulary = text.split(' ');
    return vocabulary;
  }

  @override
  void initState() {
    super.initState();
    vocabulary.addAll(separatevocabulary(a));
    vocabulary.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            LevelWidget(),
            VocabularyWidget(),
            SizedBox(height: 32),
            CheckAnswerTab()
          ],
        ),
      ),
    );
  }
}
