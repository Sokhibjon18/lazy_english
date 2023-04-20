import 'package:flutter/material.dart';

class TakeUserInfo extends StatefulWidget {
  const TakeUserInfo(
      {super.key,
      required this.questionText,
      required this.whatToWriteInTextfield});
  final String questionText;
  final String whatToWriteInTextfield;

  @override
  State<TakeUserInfo> createState() => _TakeUserInfoState();
}

class _TakeUserInfoState extends State<TakeUserInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Text(
            widget.questionText,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const SizedBox(height: 32),
          Text(
            widget.whatToWriteInTextfield,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          const TextField(
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF6949FF),
                ),
              ),
            ),
            cursorColor: Color(0xFF6949FF),
          ),
        ],
      ),
    );
  }
}
