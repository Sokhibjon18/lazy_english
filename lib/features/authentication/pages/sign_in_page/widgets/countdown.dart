import 'dart:async';

import 'package:flutter/material.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key, required this.onTicked});
  final Function onTicked;

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  static const countDownDuration = Duration(seconds: 9);
  Duration duration = const Duration();
  Timer? timer;
  bool isCountDown = true;

  @override
  void initState() {
    super.initState();
    startTimer();

    // reset();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  void removeTime() {
    widget.onTicked();
    setState(() {
      final seconds = duration.inSeconds - 1;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }

    timer = Timer.periodic(const Duration(seconds: 1), (_) => removeTime());
  }

  void reset() {
    if (isCountDown) {
      setState(() {
        duration = countDownDuration;
      });
    } else {
      setState(() {
        duration = const Duration();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: buildTime());
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Text(
      seconds,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF6949FF),
      ),
    );
  }
}
