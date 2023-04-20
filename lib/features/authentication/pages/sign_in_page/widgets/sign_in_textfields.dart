import 'package:flutter/material.dart';

class SignInTextfields extends StatefulWidget {
  const SignInTextfields({super.key});

  @override
  State<SignInTextfields> createState() => _SignInTextfieldsState();
}

bool isVisible = false;

class _SignInTextfieldsState extends State<SignInTextfields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
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
        const SizedBox(height: 32),
        const Text(
          'Password',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        TextField(
          obscureText: isVisible,
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
                  isVisible = !isVisible;
                });
              },
              child: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          cursorColor: const Color(0xFF6949FF),
        ),
      ],
    );
  }
}
