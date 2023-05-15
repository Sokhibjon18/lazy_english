import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'list_info_badget.dart';

class BadgetList extends StatefulWidget {
  const BadgetList({super.key});

  @override
  State<BadgetList> createState() => _BadgetListState();
}

class _BadgetListState extends State<BadgetList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listInfoBadges.length + 1,
      itemBuilder: (_, index) {
        if (index == listInfoBadges.length) {
          return const SizedBox(height: 24);
        }
        return Container(
          margin: const EdgeInsets.only(top: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Color(0xFFE0E0E0))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'This Year',
                      style: TextStyle(
                          color: Color(0xFF212121), fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '${listInfoBadges[index].length} badges',
                      style: const TextStyle(
                          color: Color(0xFF616161), fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listInfoBadges[index].length,
                itemBuilder: (m, number) {
                  return GestureDetector(
                    child: GestureDetector(
                      onTap: () => context.go('/challange/quiz_king'),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(top: BorderSide(color: Color(0xFFEEEEEE)))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 94.44,
                                  child: Image.asset(listInfoBadges[index][number].badgetImageName),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listInfoBadges[index][number].typ,
                                      style: const TextStyle(
                                          color: Color(0xFF212121),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          listInfoBadges[index][number].month,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF616161)),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8, right: 8),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Color(0xFF616161),
                                          ),
                                        ),
                                        Text(
                                          listInfoBadges[index][number].xpLevel,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF616161)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    color: Color(0xFF616161),
                                    splashRadius: 20,
                                    icon: const Icon(Icons.arrow_forward_ios))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
