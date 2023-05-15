import 'package:flutter/material.dart';

class CompletedListInfo {
  String text;
  String iconName;
  String amount;
  Color startColor;
  Color finishColor;

  CompletedListInfo(
      {required this.amount,
      required this.iconName,
      required this.text,
      required this.startColor,
      required this.finishColor});
}

List<CompletedListInfo> complatedListInfo = [
  CompletedListInfo(
      amount: '24',
      iconName: 'assets/vectors/light.svg',
      text: 'TotalXP',
      finishColor: const Color(0xFFFB9400),
      startColor: const Color(0xFFFFAB38)),
  CompletedListInfo(
    amount: '1:45',
    iconName: 'assets/vectors/time.svg',
    text: 'Time',
    finishColor: const Color(0xFF12D18E),
    startColor: const Color(0xFF71E3BB),
  ),
  CompletedListInfo(
    amount: '87%',
    iconName: 'assets/vectors/target.svg',
    text: 'Accura..',
    startColor: const Color(0xFFFF8A9B),
    finishColor: const Color(0xFFFF5A5F),
  )
];
