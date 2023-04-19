import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TargetList3 extends StatefulWidget {
  const TargetList3({super.key});

  @override
  State<TargetList3> createState() => _TargetList3State();
}

class _TargetList3State extends State<TargetList3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width - 48,
          decoration: const BoxDecoration(
              color: Color(0xFFFF5A5F),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6949FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                          child: const Text(
                            'Lesson',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Text(
                          'Complete 10 Lessons!',
                          maxLines: 2,
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        ),
                      ),
                      const Text(
                        'Earn 1500 XP and get a special bonus from Elingo!',
                        maxLines: 3,
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                const Expanded(
                    child: Image(image: AssetImage('assets/images/list3.png')))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFFB9400)),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LinearPercentIndicator(
                  animationDuration: 1000,
                  animation: true,
                  barRadius: const Radius.circular(100),
                  lineHeight: 16,
                  percent: 0.5813333,
                  backgroundColor: const Color(0xFFEEEEEE),
                  progressColor: const Color(0xFF6949FF),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Color(0xFFEEEEEE)))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '872 / 1500',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF6949FF)),
                        ),
                        Text(
                          '3 days left',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF616161)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Take the Challenge',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF212121),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
