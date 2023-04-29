import 'package:flutter/material.dart';
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
                children: List.generate(remuvVocabulary.length, (index) {
                  return TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFFFFFFF),
                          side: const BorderSide(color: Color(0xFFEEEEEE)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        setState(() {
                          remuvVocabulary.remove(remuvVocabulary[index]);
                          buttonColors[index] = const Color(0xFFFFFFFF);
                          textColors[index] = const Color(0xFF212121);
                        });
                      },
                      child: Text(
                        remuvVocabulary[index],
                        style: const TextStyle(
                            color: Color(0xFF212121), fontSize: 18, fontWeight: FontWeight.w700),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  setState(() {
                    remuvVocabulary.add(vocabulary[index]);
                    buttonColors[index] = const Color(0xFFEEEEEE);
                    textColors[index] = const Color(0xFFEEEEEE);
                  });
                },
                child: Text(
                  vocabulary[index],
                  style: TextStyle(
                      color: textColors[index], fontSize: 18, fontWeight: FontWeight.w700),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
