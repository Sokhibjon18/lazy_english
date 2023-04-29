import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChallangeAppBar extends StatefulWidget {
  const ChallangeAppBar({super.key});

  @override
  State<ChallangeAppBar> createState() => _ChallangeAppBarState();
}

class _ChallangeAppBarState extends State<ChallangeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 17.87),
              child: ClipRRect(
                child: SvgPicture.asset(
                  'assets/vectors/icon.svg',
                ),
              ),
            ),
            const Text(
              'Challenge',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontFamily: 'Nunito',
              ),
            ),
          ],
        ),
        Container(
            height: 23.33,
            width: 23.33,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF212121)),
                borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            child: const Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 20,
            )),
      ],
    );
  }
}
