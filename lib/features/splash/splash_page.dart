import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> goToWelcomePage() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => context.go('/home'),
    );
  }

  @override
  void initState() {
    goToWelcomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
