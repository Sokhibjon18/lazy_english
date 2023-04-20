import 'package:flutter/material.dart';
import 'package:lazy_english/features/authentication/pages/welcome_page.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  Future<void> goToWelcomePage() {
    return Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const WelcomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    goToWelcomePage();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: ClipRRect(
              child: Image(
                height: 173,
                width: 173,
                image: AssetImage('assets/images/main_image.png'),
              ),
            ),
          ),
          SizedBox(height: 32),
          Text(
            'Elingo',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
