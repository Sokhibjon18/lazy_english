import 'package:flutter/material.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 40),
          Text(
            'What is your email address?',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          SizedBox(height: 32),
          Text(
            'Email',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          TextField(
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
