import 'package:flutter/material.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/second_page.dart';
import 'package:lazy_english/features/start_lesson/sentence_match/timer_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SentenceMatchPage extends StatefulWidget {
  const SentenceMatchPage({super.key});

  @override
  State<SentenceMatchPage> createState() => _SentenceMatchPageState();
}

class _SentenceMatchPageState extends State<SentenceMatchPage> {
  void nextPage() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyWidget()));
    });
  }

  @override
  void initState() {
    super.initState();

    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Wrap(
              spacing: 50,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 4,
                      right: MediaQuery.of(context).size.width / 4),
                  child: Image.asset('assets/images/think.png'),
                ),
                const Text(
                  'Loading...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6949FF)),
                ),
                LinearPercentIndicator(
                  animation: true,
                  lineHeight: 12,
                  percent: 1,
                  barRadius: const Radius.circular(100),
                  animationDuration: 3600,
                  backgroundColor: const Color(0xFFEEEEEE),
                  progressColor: const Color(0xFF6949FF),
                ),
                const Text(
                  'Complete the course faster to get more XP and Diamonds.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF616161),
                      fontWeight: FontWeight.w700),
                ),
                TimerWidget(),
              ]),
        ),
      ),
    );
  }
}
