import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idute_app/bloc/auth_bloc/auth_bloc.dart';
import 'package:idute_app/bloc/search_bloc/search_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/users': (context) => const UserPage(),
      }),
    );
  }
}
