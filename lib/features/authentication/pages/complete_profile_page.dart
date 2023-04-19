import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 64),
            child: Center(
              child: Container(
                height: 48,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFAFAFA).withOpacity(0.3),
                    border:
                        Border.all(color: const Color(0xFFFAFAFA), width: 3)),
                child: const Center(child: Text('Hurray!!')),
              ),
            ),
          ),
          const Image(
            width: 155,
            height: 229,
            image: AssetImage('assets/auth_images/happy_jumping.png'),
          ),
          const Text(
            'Welcome 👋',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6949FF),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Your profile has been created\nsuccessfully.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF616161),
            ),
            textAlign: TextAlign.center,
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
                child: const Text('CONTINUE TO HOME'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
