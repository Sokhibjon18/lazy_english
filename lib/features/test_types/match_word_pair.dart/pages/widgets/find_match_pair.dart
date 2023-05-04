import 'package:flutter/material.dart';
import 'package:lazy_english/features/test_types/match_word_pair.dart/pages/widgets/words_list.dart';

class FindMatchPair extends StatefulWidget {
  const FindMatchPair({super.key});

  @override
  State<FindMatchPair> createState() => _FindMatchPairState();
}

class _FindMatchPairState extends State<FindMatchPair> {
  List<bool> isCorrectInUzbek = [false, false, false, false, false, false];
  List<bool> isCorrectInEnglish = [false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 10, bottom: 12, top: 12),
                  child: GestureDetector(
                    onTap: () {
                      isCorrectInUzbek = [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false,
                      ];
                      setState(() {
                        isCorrectInUzbek[index] = true;
                      });
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: isCorrectInUzbek[index] == true
                            ? const Color(0xFF6949FF)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: isCorrectInUzbek[index] == true
                              ? const Color(0xFF6949FF)
                              : const Color(0xFFEEEEEE),
                          width: 1.4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            uzbekLanguageWord[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: isCorrectInUzbek[index] == true
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, top: 12, bottom: 12),
                  child: GestureDetector(
                    onTap: () {
                      isCorrectInEnglish = [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false,
                      ];
                      setState(() {
                        isCorrectInEnglish[index] = true;
                      });
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: isCorrectInEnglish[index] == true
                            ? const Color(0xFF6949FF)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: isCorrectInEnglish[index] == true
                              ? const Color(0xFF6949FF)
                              : const Color(0xFFEEEEEE),
                          width: 1.4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            englishWords[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: isCorrectInEnglish[index] == true
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
