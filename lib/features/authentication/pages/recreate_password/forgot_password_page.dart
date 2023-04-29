import 'package:flutter/material.dart';
import 'virification_code_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                const SizedBox(height: 40),
                const Text(
                  'Forgot Password 🔑',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Enter your email address to get an OTP code to reset your password.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                const TextField(
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6949FF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Divider(color: Colors.grey.withOpacity(0.6)),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, left: 24, right: 24, top: 24),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const VerificationCodePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6949FF),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Continue'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
