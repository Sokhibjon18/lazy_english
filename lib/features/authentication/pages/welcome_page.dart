import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 120),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFFAFAFA).withOpacity(0.3),
                  border: Border.all(color: const Color(0xFFFAFAFA), width: 3)),
              child: const Center(child: Text('Hi there! I`m El!')),
            ),
          ),
          const Image(
            height: 215,
            width: 142,
            image: AssetImage('assets/images/greeting.png'),
          ),
          const Text(
            'ELingo',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6949FF),
            ),
          ),
          const Text(
            'Learn languages whenever and\nwherever you want. It`s free and forever.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF616161),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Expanded(child: Container()),
          Divider(color: Colors.grey.withOpacity(0.6)),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 12),
            child: SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/splash/auth_welcome/auth_user_info');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6949FF),
                  shape: const StadiumBorder(),
                ),
                child: const Text('GET STARTED'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
