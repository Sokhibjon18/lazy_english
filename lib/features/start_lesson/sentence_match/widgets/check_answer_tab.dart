import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/lists.dart';

class CheckAnswerTab extends StatefulWidget {
  const CheckAnswerTab({super.key});

  @override
  State<CheckAnswerTab> createState() => _CheckAnswerTabState();
}

class _CheckAnswerTabState extends State<CheckAnswerTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 58,
        width: double.infinity,
        child: TextButton(
            onPressed: () {
              if (compareLists(answer, remuvVocabulary) == true) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(seconds: 1),
                    backgroundColor: Color(0xFF12D18E),
                    content: Column(children: [
                      Row(children: const [
                        Text('Correct!',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 24,
                                fontWeight: FontWeight.w900)),
                      ]),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                              height: 58,
                              width: double.infinity,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      backgroundColor: Color(0xFFFFFFFF)),
                                  onPressed: () {},
                                  child: const Text(
                                    'CONTINUE',
                                    style: TextStyle(
                                        color: Color(0xFF12D18E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ))))
                    ])));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Color(0xFFF75555),
                    content: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text('Wrong',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700)),
                          ]),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text('Correct answer:',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(height: 8),
                          Row(children: [
                            for (String word in remuvVocabulary) Text('$word ')
                          ]),
                          const SizedBox(height: 24),
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                height: 58,
                                width: double.infinity,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFFFFFFF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100))),
                                    onPressed: () {},
                                    child: const Text('OK',
                                        style: TextStyle(
                                            color: Color(0xFFF75555)))),
                              ))
                        ])));
              }
            },
            style: TextButton.styleFrom(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                backgroundColor: remuvVocabulary.isEmpty
                    ? const Color(0xFF543ACC)
                    : const Color(0xFF6949FF)),
            child: const Text(
              'Check Answers',
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )));
  }
}
