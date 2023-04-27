import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/lists.dart';

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
                children: List.generate(remuvVocabulary.length, (index) {
                  return TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          side: const BorderSide(color: Color(0xFFEEEEEE)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        setState(() {
                          remuvVocabulary.remove(remuvVocabulary[index]);
                          buttonColors.clear();
                          buttonColors.addAll(colorButton);
                          textColors.clear();
                          textColors.addAll(colorText);
                        });
                      },
                      child: Text(
                        remuvVocabulary[index],
                        style: const TextStyle(color: Color(0xFF212121)),
                      ));
                })),
          ),
          Wrap(
              spacing: 5.0,
              runSpacing: 10.0,
              children: List.generate(vocabulary.length, (index) {
                return TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: buttonColors[index],
                        side: const BorderSide(color: Color(0xFFEEEEEE)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      setState(() {
                        remuvVocabulary.add(vocabulary[index]);
                        colorButton.addAll(buttonColors);
                        buttonColors[index] = selectedButtonColor[index];
                        colorText.addAll(textColors);
                        textColors[index] = selectedButtonColor[index];
                      });
                    },
                    child: Text(
                      vocabulary[index],
                      style: TextStyle(color: textColors[index]),
                    ));
              })),
        ],
      ),
    );
  }
}
