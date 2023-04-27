import 'package:flutter/material.dart';
import 'dart:async';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter++;
      });
      if (_counter == 5) {
        _timer?.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Text('');
  }
}
