import 'package:flutter/material.dart';
import '../../../list_info.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TargetDailyMission extends StatefulWidget {
  const TargetDailyMission({super.key});

  @override
  State<TargetDailyMission> createState() => _TargetDailyMissionState();
}

class _TargetDailyMissionState extends State<TargetDailyMission> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: infoList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFEEEEEE)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                children: [
                  SizedBox(width: 48, child: Image.asset(infoList[index].iconImageName)),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          infoList[index].missionName,
                          style: const TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: LinearPercentIndicator(
                                animationDuration: 400,
                                animation: true,
                                barRadius: const Radius.circular(100),
                                lineHeight: 12,
                                padding: const EdgeInsets.all(0),
                                percent: infoList[index].percent,
                                backgroundColor: const Color(0xFFEEEEEE),
                                progressColor: const Color(0xFF6949FF),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              infoList[index].count,
                              style: const TextStyle(
                                color: Color(0xFF6949FF),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
