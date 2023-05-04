import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazy_english/features/test_types/find_meaning_of_sentence/page/widgets/sentences_list.dart';

class FindTranslationOfWord extends StatefulWidget {
  const FindTranslationOfWord({super.key});

  @override
  State<FindTranslationOfWord> createState() => _FindTranslationOfWordState();
}

class _FindTranslationOfWordState extends State<FindTranslationOfWord> {
  List<bool> checkAnswer = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            final sentenceListIndex = sentencesList[index];
            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    checkAnswer = [false, false, false];
                    checkAnswer[index] = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: checkAnswer[index] == true
                        ? const Color(0xFF6949FF).withOpacity(0.08)
                        : const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: checkAnswer[index] == true
                          ? const Color(0xFF6949FF)
                          : const Color(0xFFEEEEEE),
                      width: checkAnswer[index] == true ? 4 : 3,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AutoSizeText(
                      sentenceListIndex,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
