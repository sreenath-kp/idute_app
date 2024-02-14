import 'package:flutter/material.dart';
import 'package:idute_app/homepage.dart';
import 'package:idute_app/loginpage.dart';
import 'package:idute_app/userpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/login': (context) => const LoginPage(),
      '/': (context) => const HomePage(),
      '/users': (context) => const UserPage(),
    });
  }
}
