import 'package:flutter/material.dart';
import 'package:sapp_flutterxy/screens/bottom_bar.dart';
import 'package:sapp_flutterxy/screens/drawer_bar.dart';
import 'package:sapp_flutterxy/screens/home_screen.dart';
import 'package:sapp_flutterxy/screens/profile_screen.dart';
import 'package:sapp_flutterxy/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SApp',
      theme: ThemeData(useMaterial3: true, primaryColor: primary),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const Text(
              'Settings',
              style: TextStyle(fontSize: 30),
            ),
      },
      home: const BottomBar(),
    );
  }
}
