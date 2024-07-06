import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_otp/firebase_options.dart';
import 'package:firebase_otp/mobileInputPage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MobileInputPage());
  }
}
