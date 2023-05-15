import 'package:flutter/material.dart';

import 'badget_list.dart';

class BadgetButton extends StatefulWidget {
  const BadgetButton({super.key});

  @override
  State<BadgetButton> createState() => _BadgetButtonState();
}

class _BadgetButtonState extends State<BadgetButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BadgetList(),
        ],
      ),
    );
  }
}
