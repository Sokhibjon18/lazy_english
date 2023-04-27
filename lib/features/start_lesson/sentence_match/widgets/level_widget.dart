import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/lists.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LevelWidget extends StatefulWidget {
  const LevelWidget({super.key});

  @override
  State<LevelWidget> createState() => _LevelWidgetState();
}

class _LevelWidgetState extends State<LevelWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: LinearPercentIndicator(
                          lineHeight: 12,
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          percent: 0.3,
                          barRadius: const Radius.circular(100),
                          backgroundColor: const Color(0xFFEEEEEE),
                          progressColor: const Color(0xFF6949FF),
                        ),
                      ),
                      SvgPicture.asset('assets/vectors/small_dimond.svg'),
                      const Text(
                        '957',
                        style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xFFEEEEEE)))),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 24),
                    child: Text(
                      'Translate this sentence',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF212121)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/vectors/sound.svg'),
                      const Text(
                        'I walk and she swims.',
                        style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
               
              ],
            );
  }
}