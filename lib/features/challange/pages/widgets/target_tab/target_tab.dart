import 'package:flutter/material.dart';
import 'target_widgets/target_challenge_list.dart';
import 'target_widgets/target_list.dart';

class TargetTab extends StatefulWidget {
  const TargetTab({super.key});

  @override
  State<TargetTab> createState() => _TargetTabState();
}

class _TargetTabState extends State<TargetTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Daily Missions 🎯',
                  style: TextStyle(
                      color: Color(0xFF212121),
                      fontFamily: 'Nunito',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Color(0xFF6949FF),
                )
              ],
            ),
          ),
          const TargetDailyMission(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Challenge Events 🗓',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xFF6949FF),
              )
            ],
          ),
          const TargetChallengeList(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
