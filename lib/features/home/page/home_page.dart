import 'package:flutter/material.dart';
import 'package:lazy_english/features/home/data/home_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            HomeRepository().getChallenges();
          },
          child: Text('Get challenges'),
        ),
      ),
    );
  }
}
