// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TargetChallengeInfo {
  String buttonName;
  String xpBonus;
  String level;
  String imageName;
  Color colors;
  double protsent;
  String protsentLevel;
  String time;
  TargetChallengeInfo({
    required this.buttonName,
    required this.xpBonus,
    required this.level,
    required this.imageName,
    required this.colors,
    required this.protsent,
    required this.protsentLevel,
    required this.time,
  });
}

List<TargetChallengeInfo> targetChallengeInfo = [
  TargetChallengeInfo(
      time: '3 days left',
      protsentLevel: '872 / 2000',
      protsent: 0.436,
      colors: const Color(0xFFFB9400),
      buttonName: 'Competition',
      xpBonus: 'Earn 2000 XP and get a special bonus from Elingo!',
      level: 'Elingo Match',
      imageName: 'assets/images/start.png'),
  TargetChallengeInfo(
      time: '5 days left',
      protsentLevel: '872 / 1500',
      protsent: 0.52,
      colors: const Color(0xFFFF5A5F),
      buttonName: 'Lesson',
      xpBonus: 'Earn 1500 XP and get a special bonus from Elingo!',
      level: 'Complete 10 Lessons!',
      imageName: 'assets/images/done.png'),
  TargetChallengeInfo(
      time: '10 days left',
      protsentLevel: '872 / 872',
      protsent: 1,
      colors: const Color(0xFF71E3BB),
      buttonName: 'Leaderboard',
      xpBonus: 'Earn 2000 XP and get a special bonus from Elingo!',
      level: 'Be Number 1!',
      imageName: 'assets/images/think.png')
];
