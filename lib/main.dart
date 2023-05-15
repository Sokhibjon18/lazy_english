import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/core/my_app.dart';
import 'package:lazy_english/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      : await Firebase.initializeApp();
  runApp(const MyApp());
}
