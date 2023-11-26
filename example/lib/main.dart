import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: LoginPage(
        appIcon: Image.asset(
          'assets/images/app-logo.png',
          height: 64,
          width: 64,
        ),
        appName: 'My App',
        appTagline: 'Simple & Reliable',
        loginForm: FilledButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ),
    );
  }
}
