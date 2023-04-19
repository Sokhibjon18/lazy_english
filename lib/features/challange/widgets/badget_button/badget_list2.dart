import 'package:flutter/material.dart';
import 'package:lazy_english/features/challange/pages/list_info.dart';

class BadgetListState2 extends StatefulWidget {
  const BadgetListState2({super.key});

  @override
  State<BadgetListState2> createState() => _BadgetListStateState2();
}

class _BadgetListStateState2 extends State<BadgetListState2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Color(0xFFE0E0E0))),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'This Year',
                  style: TextStyle(
                      color: Color(0xFF212121),
                      fontFamily: 'Nunito',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                Text(
                  '4 badges',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF616161)),
                )
              ],
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: infoListBadget2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Color(0xFFEEEEEE)))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    infoListBadget2[index].badgetImageName)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  infoListBadget2[index].typ,
                                  style: const TextStyle(
                                      color: Color(0xFF212121),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 16.25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      infoListBadget2[index].month,
                                      style: const TextStyle(
                                          color: Color(0xFF616161),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      width: 24,
                                      child: Icon(
                                        Icons.brightness_1_sharp,
                                        size: 10,
                                        color: Color(0xFF616161),
                                      ),
                                    ),
                                    Text(
                                      infoListBadget2[index].xpLevel,
                                      style: const TextStyle(
                                          color: Color(0xFF616161),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
