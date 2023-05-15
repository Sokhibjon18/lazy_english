import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 40),
          Text(
            'What is your Phone number?',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          SizedBox(height: 32),
          Text(
            'Phone number',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          TextField(
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              prefixText: '+998 ',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6949FF)),
              ),
            ),
            keyboardType: TextInputType.number,
            cursorColor: Color(0xFF6949FF),
          ),
        ],
      ),
    );
  }
}
