import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TapToTalkButton extends StatefulWidget {
  const TapToTalkButton({
    super.key,
    required this.onListen,
  });
  final Function onListen;
  @override
  State<TapToTalkButton> createState() => _TapToTalkButtonState();
}

class _TapToTalkButtonState extends State<TapToTalkButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Column(
        children: [
          InkWell(
            onTap: () => widget.onListen(),
            borderRadius: BorderRadius.circular(24),
            child: Container(
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xFFEEEEEE), width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/micraphone.svg',
                    height: 20,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Tap to speak',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6949FF),
                    ),
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
