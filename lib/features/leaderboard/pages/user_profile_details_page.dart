import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/buttons_for_linking_user.dart';
import 'widgets/user_results.dart';

class UserProfileDetailsPage extends StatefulWidget {
  const UserProfileDetailsPage({super.key});

  @override
  State<UserProfileDetailsPage> createState() => _UserProfileDetailsPageState();
}

class _UserProfileDetailsPageState extends State<UserProfileDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 24, top: 48),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                Expanded(child: Container()),
                SvgPicture.asset('assets/vectors/send_icon.svg'),
                const SizedBox(width: 24),
                SvgPicture.asset('assets/vectors/more_icon.svg'),
              ],
            ),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(height: 48),
          const Text(
            'Maryland Winkles',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Joined since 16 May 2020',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Divider(color: Color(0xFFEEEEEE)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const UserResults(
                  resultInNumbers: '1,725',
                  whatKindOfResult: 'followers',
                ),
                Container(width: 1, height: 58, color: const Color(0xFFEEEEEE)),
                const UserResults(
                  resultInNumbers: '256',
                  whatKindOfResult: 'following',
                ),
                Container(width: 1, height: 58, color: const Color(0xFFEEEEEE)),
                const UserResults(
                  resultInNumbers: '18,528',
                  whatKindOfResult: 'lifetime XP',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const ButtonsForLinkingWithUsers(),
        ],
      ),
    );
  }
}
