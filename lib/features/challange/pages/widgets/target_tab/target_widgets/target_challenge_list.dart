import 'package:flutter/material.dart';
import '../target_challenge_info.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TargetChallengeList extends StatefulWidget {
  const TargetChallengeList({super.key});

  @override
  State<TargetChallengeList> createState() => _TargetChallengeListState();
}

class _TargetChallengeListState extends State<TargetChallengeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: targetChallengeInfo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: targetChallengeInfo[index].colors,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 32,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF6949FF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100))),
                                    child: Text(
                                      targetChallengeInfo[index].buttonName,
                                      style: const TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w600),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 12),
                                child: Text(
                                  targetChallengeInfo[index].level,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF)),
                                ),
                              ),
                              Text(
                                targetChallengeInfo[index].xpBonus,
                                style: const TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Expanded(child: Image.asset(targetChallengeInfo[index].imageName))
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                      border: Border.all(color: targetChallengeInfo[index].colors)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        LinearPercentIndicator(
                          animationDuration: 1000,
                          animation: true,
                          barRadius: const Radius.circular(100),
                          lineHeight: 16,
                          percent: targetChallengeInfo[index].protsent,
                          backgroundColor: const Color(0xFFEEEEEE),
                          progressColor: const Color(0xFF6949FF),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                targetChallengeInfo[index].protsentLevel,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xFF6949FF)),
                              ),
                              Text(
                                targetChallengeInfo[index].time,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF616161)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(top: BorderSide(color: Color(0xFFEEEEEE)))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Take the Challenge',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF212121)),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF212121),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
