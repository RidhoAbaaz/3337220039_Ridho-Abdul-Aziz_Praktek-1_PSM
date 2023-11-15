import 'package:flutter/material.dart';
import 'package:psm_1/home.dart';
import 'package:psm_1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 193, 38, 38),
          ),
          useMaterial3: true),
      home: const LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => Home(),
      },
    );
  }
}
