import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart'
import 'go_router/app_router.dart';
import 'package:lazy_english/features/comleted_page/completed_page.dart';
import 'features/go_router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CompletedPage(),
    
      
    );
  }
}
