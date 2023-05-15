import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class EnterVerificationCode extends StatefulWidget {
  const EnterVerificationCode({super.key});

  @override
  State<EnterVerificationCode> createState() => _EnterVerificationCodeState();
}

bool obscured = false;

class _EnterVerificationCodeState extends State<EnterVerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            'Enter the verification code',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const SizedBox(height: 32),
          const Text(
            'Password',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          Center(
            child: Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              animationCurve: Curves.bounceInOut,
              focusedPinTheme: PinTheme(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF6949FF).withOpacity(0.08),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF6949FF)),
                ),
              ),
              defaultPinTheme: PinTheme(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFFEEEEEE),
                  ),
                ),
              ),
              length: 6,
            ),
          ),
          // TextField(
          //   obscureText: obscured,
          //   style: const TextStyle(
          //     fontSize: 22,
          //     fontWeight: FontWeight.w500,
          //   ),
          //   decoration: InputDecoration(
          //     focusedBorder: const UnderlineInputBorder(
          //       borderSide: BorderSide(
          //         color: Color(0xFF6949FF),
          //       ),
          //     ),
          //     suffixIcon: GestureDetector(
          //       onTap: () {
          //         setState(() {
          //           obscured = !obscured;
          //         });
          //       },
          //       child: Icon(
          //         obscured ? Icons.visibility : Icons.visibility_off,
          //       ),
          //     ),
          //   ),
          //   cursorColor: const Color(0xFF6949FF),
          // ),
        ],
      ),
    );
  }
}
