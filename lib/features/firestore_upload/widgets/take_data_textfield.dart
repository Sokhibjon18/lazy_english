import 'package:flutter/material.dart';

class TakeDataTextfield extends StatefulWidget {
  const TakeDataTextfield({
    Key? key,
    required this.onChanged,
    required this.labelText,
  }) : super(key: key);
  final String labelText;
  final Function(String)? onChanged;

  @override
  State<TakeDataTextfield> createState() => _TakeDataTextfieldState();
}

class _TakeDataTextfieldState extends State<TakeDataTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Color(0xFF6949FF)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFF6949FF),
          ),
        ),
      ),
      cursorColor: const Color(0xFF6949FF),
      onChanged: widget.onChanged,
    );
    ;
  }
}
