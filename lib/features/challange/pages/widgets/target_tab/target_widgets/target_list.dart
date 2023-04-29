import 'package:flutter/material.dart';
import '../../../list_info.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TargetListState extends StatefulWidget {
  const TargetListState({super.key});

  @override
  State<TargetListState> createState() => _TargetListStateState();
}

class _TargetListStateState extends State<TargetListState> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: const Color(0xFFEEEEEE))),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 34.13, top: 36.5, left: 26.5, right: 25.29),
                    child: SizedBox(
                        height: 52.37,
                        width: 52.21,
                        child: Image.asset(infoList[index].iconImageName)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        infoList[index].coins,
                        style: const TextStyle(
                            color: Color(0xFF212121), fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 16.25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LinearPercentIndicator(
                            animationDuration: 1000,
                            animation: true,
                            barRadius: const Radius.circular(100),
                            width: 180,
                            lineHeight: 12,
                            percent: infoList[index].protsent,
                            backgroundColor: const Color(0xFFEEEEEE),
                            progressColor: const Color(0xFF6949FF),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            infoList[index].count,
                            style: const TextStyle(
                                color: Color(0xFF6949FF),
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
