import 'package:flutter/material.dart';
import 'package:lazy_english/features/authentication/pages/sign_in_page.dart/sign_in_page.dart';
import 'package:lazy_english/features/authentication/pages/user_info_page.dart';

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
            image: AssetImage('assets/auth_images/greeting.png'),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const UserInfoPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6949FF),
                  shape: const StadiumBorder(),
                ),
                child: const Text('GET STARTED'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SizedBox(
              height: 58,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignInPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF0EDFF),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'I ALREADY HAVE AN ACCOUNT',
                  style: TextStyle(color: Color(0xFF6949FF)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
