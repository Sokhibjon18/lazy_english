import 'package:flutter/material.dart';
import 'create_new_password_page.dart';

import '../sign_in_page/widgets/countdown.dart';

import 'package:pinput/pinput.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({super.key});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

int count = 0;

class _VerificationCodePageState extends State<VerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                count = 0;
              },
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(height: 40),
            const Text(
              'You`ve got mail 📩',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            const Text(
              'We have sent the OTP verification code to your email address. Check your email and enter the code below.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 48),
            Center(
              child: Pinput(
                animationCurve: Curves.bounceInOut,
                focusedPinTheme: PinTheme(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  width: 83,
                  height: 61,
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
                  width: 83,
                  height: 61,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFEEEEEE),
                    ),
                  ),
                ),
                length: 4,
              ),
            ),
            Expanded(child: Container()),
            const Center(
              child: Text(
                'Didn`t receive email?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You can resend code in',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 4),
                CountDownWidget(
                  onTicked: () {
                    count++;
                    if (count == 10) {
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 4),
                const Text(
                  's',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CreateNewPasswordForSignIn(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6949FF),
                  shape: const StadiumBorder(),
                ),
                child: Text(count == 10 ? 'Resend code' : 'Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
