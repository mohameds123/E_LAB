// ignore_for_file: prefer_const_constructors

import 'package:e_lab/screens/signUpScreen.dart';
import 'package:e_lab/screens/welcome.dart';
import 'package:flutter/material.dart';

import 'screens/loginScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute: "/loginIn",
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/loginIn": (context) => const LoginScreen(),
        "/signUp": (context) => const SignUp(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
