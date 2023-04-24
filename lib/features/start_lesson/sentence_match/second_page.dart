import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> vocabulary = [
    'Olma',
    'Banan',
    'Anor',
    'Uzum',
    'Mango',
    'Qulpnay'
  ];

  String a = 'I walk and she swim';

  List<String> separateWords(String text) {
    List<String> words = text.split(' ');
    return words;
  }

  @override
  void initState() {
    vocabulary.addAll(separateWords(a));
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
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: LinearPercentIndicator(
                          // animation: true,
                          lineHeight: 12,
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          percent: 0.3,
                          barRadius: const Radius.circular(100),
                          // animationDuration: 3600,
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
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: vocabulary.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(5),
              itemBuilder: (BuildContext _, int index) {
                return Wrap(
                  direction: Axis.vertical,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFEEEEEE)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {},
                        child: Text(
                          vocabulary[index],
                          style: const TextStyle(color: Color(0xFF212121)),
                        )),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
