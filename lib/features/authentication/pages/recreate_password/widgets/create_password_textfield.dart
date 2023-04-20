import 'package:flutter/material.dart';
import 'package:lazy_english/features/authentication/pages/sign_in_page/widgets/sign_in_textfields.dart';

class CreatePasswordTextfield extends StatefulWidget {
  const CreatePasswordTextfield({super.key, required this.isVisible});
  final bool isVisible;

  @override
  State<CreatePasswordTextfield> createState() =>
      _CreatePasswordTextfieldState();
}

class _CreatePasswordTextfieldState extends State<CreatePasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
