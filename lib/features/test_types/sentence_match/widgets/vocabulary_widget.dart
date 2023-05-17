import 'package:flutter/material.dart';
import 'package:lazy_english/features/test_types/sentence_match/widgets/snackbar_funcsion_done.dart';
import 'package:lazy_english/features/test_types/sentence_match/widgets/snackbar_funcsion_wrong.dart';
import '../lists.dart';

class VocabularyWidget extends StatefulWidget {
  const VocabularyWidget({super.key});

  @override
  State<VocabularyWidget> createState() => _VocabularyWidgetState();
}

class _VocabularyWidgetState extends State<VocabularyWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 100,
            child: Wrap(
                spacing: 5.0,
                runSpacing: 10.0,
                children: List.generate(removeWords.length, (index) {
                  return InkWell(
                      onTap: () {
                        setState(() {
                          removeWords[index].picked = true;
                          removeWords.remove(removeWords[index]);
                          presssed = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEEEEEE), width: 2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            removeWords[index].text,
                            style: const TextStyle(
                                color: Color(0xFF212121),
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ));
                })),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 5.0,
                runSpacing: 10.0,
                children: List.generate(words.length, (index) {
                  return InkWell(
                      splashColor: const Color(0xFFFFFFFF),
                      highlightColor: const Color(0xFFFFFFFF),
                      onTap: () {
                        setState(() {
                          if (words[index].picked == true) {
                            words[index].picked = false;
                            removeWords.add(words[index]);
                            presssed = false;
                          }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: words[index].picked == true
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: const Color(0xFFEEEEEE), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            words[index].text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: words[index].picked == true
                                    ? const Color(0xFF212121)
                                    : const Color(0xFFEEEEEE),
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ));
                }),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 58,
                width: double.infinity,
                child: InkWell(
                  child: TextButton(
                    onPressed: () {
                      // ignore: prefer_typing_uninitialized_variables
                      var snackbar;
                      if (removeWords.isEmpty ||
                          compareLists(removeWords, answers) == false) {
                        snackbar = const SnackBar(
                          backgroundColor: const Color(0xFFF75555),
                          content: SnackBarFuncsionWrong(),
                        );
                      }
                      if (compareLists(removeWords, answers) == true) {
                        snackbar = const SnackBar(
                          backgroundColor: Color(0xFF12D18E),
                          content: SnackBarFuncsionDone(),
                        );
                      }

                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: removeWords.isEmpty
                            ? const Color(0xFF543ACC)
                            : const Color(0xFF6949FF)),
                    child: const Text(
                      'Check Answers',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
