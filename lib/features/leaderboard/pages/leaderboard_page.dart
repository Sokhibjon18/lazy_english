import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:lazy_english/features/leaderboard/pages/widgets/leaderboard_buttons.dart';
import 'package:lazy_english/features/leaderboard/pages/widgets/user_places.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/elingo_logo.svg'),
                const SizedBox(width: 20),
                const Text(
                  'Leaderboard',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                SizedBox(
                  child: SvgPicture.asset('assets/search_icon.svg'),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const LeaderboardButtons(),
            const UsersPlaces(),
          ],
        ),
      ),
    );
  }
}
