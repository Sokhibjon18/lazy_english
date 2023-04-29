import 'package:flutter/material.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

bool obscured = false;

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            'Create a password 🔐',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const SizedBox(height: 32),
          const Text(
            'Password',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          TextField(
            obscureText: obscured,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF6949FF),
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscured = !obscured;
                  });
                },
                child: Icon(
                  obscured ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            cursorColor: const Color(0xFF6949FF),
          ),
        ],
      ),
    );
  }
}
