import 'package:flutter/material.dart';

class CompleteResettingPasswordPage extends StatelessWidget {
  const CompleteResettingPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(child: Container()),
          Center(
            child: Container(
              height: 48,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFFAFAFA).withOpacity(0.3),
                  border: Border.all(color: const Color(0xFFFAFAFA), width: 3)),
              child: const Center(child: Text('Hurray!!')),
            ),
          ),
          const SizedBox(height: 64),
          const Image(
            height: 231,
            width: 230,
            image: AssetImage('assets/images/auth_completed.png'),
          ),
          const SizedBox(height: 40),
          const Text(
            'Welcome back!',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6949FF),
            ),
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              'You have successfully reset and created a new password.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(child: Container()),
          Divider(color: Colors.grey.withOpacity(0.6)),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 32, left: 24, right: 24, top: 24),
            child: SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                onPressed: () {},
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
    );
  }
}
