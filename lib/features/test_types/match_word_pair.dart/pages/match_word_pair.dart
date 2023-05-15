import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_english/features/test_types/match_word_pair.dart/pages/widgets/find_match_pair.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class MatchWordPairPage extends StatefulWidget {
  const MatchWordPairPage({super.key});

  @override
  State<MatchWordPairPage> createState() => _MatchWordPairPageState();
}

class _MatchWordPairPageState extends State<MatchWordPairPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Text(
              'Tap the matching word pair',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(color: Color(0xFFEEEEEE)),
          ),
          const FindMatchPair(),
          Expanded(child: Container()),
          const Divider(color: Color(0xFFEEEEEE)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: SizedBox(
              height: 58,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.go('/challange/lesson_completed'),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFF6949FF)),
                child: const Text(
                  'Check Answers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
