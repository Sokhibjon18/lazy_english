
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SnackBarFuncsionDone extends StatefulWidget {
  const SnackBarFuncsionDone({super.key});

  @override
  State<SnackBarFuncsionDone> createState() => _SnackBarFuncsionDoneState();
}

class _SnackBarFuncsionDoneState extends State<SnackBarFuncsionDone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    splashRadius: 5,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/vectors/done.svg')),
                const Text(
                  'Correct!',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    splashRadius: 5,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/vectors/send.svg')),
                IconButton(
                    splashRadius: 5,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/vectors/chats.svg')),
                IconButton(
                    splashRadius: 5,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/vectors/danger_circle.svg')),
              ],
            )
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 58,
          child: TextButton(
              style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  backgroundColor: const Color(0xFFFFFFFF)),
              onPressed: () {},
              child: const Text(
                'CONTINUE',
                style: TextStyle(
                    color: Color(0xFF12D18E),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )),
        )
      ],
    );
  }
}
