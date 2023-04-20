import 'package:flutter/material.dart';

class SignInCheckbox extends StatefulWidget {
  const SignInCheckbox({super.key});

  @override
  State<SignInCheckbox> createState() => _SignInCheckboxState();
}

bool isChecked = false;

class _SignInCheckboxState extends State<SignInCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: const Color(0xFF6949FF),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        const Text(
          'Remember me',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ],
    );
  }
}
