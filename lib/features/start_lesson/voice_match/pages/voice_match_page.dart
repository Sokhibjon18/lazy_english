import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lazy_english/features/start_lesson/voice_match/pages/widgets/tap_to_talk_button.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceMatchPage extends StatefulWidget {
  const VoiceMatchPage({super.key});

  @override
  State<VoiceMatchPage> createState() => _VoiceMatchPageState();
}

String speechText = 'How are you?';

class _VoiceMatchPageState extends State<VoiceMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SvgPicture.asset('assets/cancel.svg'),
                      onTap: () {},
                    ),
                    Expanded(
                      child: LinearPercentIndicator(
                        width: 216,
                        lineHeight: 12,
                        percent: 0.3,
                        progressColor: const Color(0xFF6949FF),
                        barRadius: const Radius.circular(100),
                        animation: true,
                        animationDuration: 1000,
                        backgroundColor: const Color(0xFFEEEEEE),
                      ),
                    ),
                    SvgPicture.asset('assets/diamond.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      '957',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(height: 42),
                const Text(
                  'Speak this sentence',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 24),
                  child: Divider(
                    color: Color(0xFFEEEEEE),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                      image: AssetImage('assets/speaking_ellingo.png'),
                      height: 138,
                      width: 120,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              width: 2, color: const Color(0xFFFAFAFA)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 16, top: 12, bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () => textToSpeech(speechText),
                                child: SvgPicture.asset('assets/volume.svg'),
                              ),
                              const SizedBox(width: 18),
                              Expanded(
                                child: SizedBox(
                                  child: AutoSizeText(
                                    speechText,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Divider(color: Color(0xFFEEEEEE)),
                const SizedBox(height: 24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Say : ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: AutoSizeText(
                    _text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          const Divider(color: Color(0xFFEEEEEE)),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          TapToTalkButton(onListen: onListen),
        ],
      ),
    );
  }

  final FlutterTts _flutterTts = FlutterTts();
  void textToSpeech(String text) async {
    await _flutterTts.setLanguage('en-US');
    await _flutterTts.setVolume(0.8);
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1);
    await _flutterTts.speak(text);
  }

  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'I am fine thank you';
  double _confidance = 1.0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void onListen() async {
    Locale myLocale;
    myLocale = const Locale("English (US)", "en_US");
    const Locale('en-US');

    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (result) => log('onStatus: $result'),
        onError: (result) => log('onError: $result'),
      );
      if (available) {
        setState(() {
          _speech.listen(
            onResult: (result) => setState(() {
              _text = result.recognizedWords;
              if (result.hasConfidenceRating && result.confidence > 0) {
                _confidance = result.confidence;
              }
            }),
          );
        });
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
