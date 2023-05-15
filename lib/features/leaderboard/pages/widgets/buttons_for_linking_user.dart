import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonsForLinkingWithUsers extends StatelessWidget {
  const ButtonsForLinkingWithUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              width: 145,
              decoration: BoxDecoration(
                color: const Color(0xFF6949FF),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/vectors/add_user_icon.svg'),
                  const SizedBox(width: 8),
                  const Text(
                    'Follow',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 45,
              width: 145,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: const Color(0xFF6949FF)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/vectors/chat_icon.svg'),
                  const SizedBox(width: 8),
                  const Text(
                    'Message',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF6949FF)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
