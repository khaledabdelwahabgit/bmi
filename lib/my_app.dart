import 'package:bmi/src/features/home/views/screens/home.dart';
import 'package:bmi/src/features/login/views/screens/login_screen.dart';
import 'package:bmi/src/features/login/views/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
