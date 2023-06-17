import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_english/features/test_types/sentence_match/lists.dart';

class SnackBarFuncsionWrong extends StatefulWidget {
  const SnackBarFuncsionWrong({super.key});

  @override
  State<SnackBarFuncsionWrong> createState() => _SnackBarFuncsionWrongState();
}

class _SnackBarFuncsionWrongState extends State<SnackBarFuncsionWrong> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  'Wrong!',
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
        const Text(
          'Correct answer:',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        Wrap(
          children: List<Widget>.generate(removeWords.length, (index) {
            return Text(
              '${removeWords[index].text} ',
              maxLines: 2,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            );
          }),
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
                'OK',
                style: TextStyle(
                    color: Color(0xFFF75555),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )),
        )
      ],
    );
  }
}
