import 'package:flutter/cupertino.dart';

class UserResults extends StatelessWidget {
  const UserResults(
      {super.key,
      required this.resultInNumbers,
      required this.whatKindOfResult});
  final String resultInNumbers;
  final String whatKindOfResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultInNumbers,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          whatKindOfResult,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
