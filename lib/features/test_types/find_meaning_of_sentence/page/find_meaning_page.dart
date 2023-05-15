import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_english/features/test_types/find_meaning_of_sentence/page/widgets/find_translation_of_word.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class FindMeaningOfSentance extends StatefulWidget {
  const FindMeaningOfSentance({super.key});

  @override
  State<FindMeaningOfSentance> createState() => _FindMeaningOfSentanceState();
}

class _FindMeaningOfSentanceState extends State<FindMeaningOfSentance> {
  final String textConvertingToSpeech = 'The boy is eating a burger';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
            child: Row(
              children: [
                SvgPicture.asset('assets/vectors/cancel.svg'),
                const SizedBox(width: 24),
                Expanded(
                  child: LinearPercentIndicator(
                    lineHeight: 12,
                    percent: 0.3,
                    barRadius: const Radius.circular(100),
                    backgroundColor: const Color(0xFFEEEEEE),
                    progressColor: const Color(0xFF6949FF),
                  ),
                ),
                const SizedBox(width: 24),
                SvgPicture.asset('assets/vectors/diamond.svg'),
                const SizedBox(width: 8),
                const Text(
                  '957',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(height: 42),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'What does this sentence mean?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Color(0xFFEEEEEE),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => convertTextToSpeech(textConvertingToSpeech),
                  child: SvgPicture.asset('assets/vectors/sound_circular.svg'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: AutoSizeText(
                    textConvertingToSpeech,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const FindTranslationOfWord(),
          const Divider(color: Color(0xFFEEEEEE)),
          Padding(
            padding:
                const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
            child: SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                onPressed: () => context.go('/challange/match_words'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6949FF),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Check Answers'),
              ),
            ),
          )
        ],
      ),
    );
  }

  final FlutterTts _flutterTts = FlutterTts();
  void convertTextToSpeech(String text) async {
    await _flutterTts.setLanguage('en-US');
    await _flutterTts.setVolume(0.8);
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1);
    await _flutterTts.speak(text);
  }
}
