import 'package:flutter/material.dart';

import 'badges_list.dart';

class BadgesButton extends StatefulWidget {
  const BadgesButton({super.key});

  @override
  State<BadgesButton> createState() => _BadgesButtonState();
}

class _BadgesButtonState extends State<BadgesButton> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BadgetList(),
        ],
      ),
    );
  }
}
