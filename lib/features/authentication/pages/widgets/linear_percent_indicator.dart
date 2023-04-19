import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentIndicatorWidget extends StatelessWidget {
  final double linearPercent;
  const LinearPercentIndicatorWidget({super.key, required this.linearPercent});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 216,
      barRadius: const Radius.circular(100),
      animation: true,
      animationDuration: 1000,
      lineHeight: 12,
      percent: linearPercent,
      backgroundColor: const Color(0xFFEEEEEE),
      progressColor: const Color(0xFF6949FF),
    );
  }
}
