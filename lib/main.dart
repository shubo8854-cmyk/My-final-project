import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const CalorieTrackApp());
}

class CalorieTrackApp extends StatelessWidget {
  const CalorieTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Treck The Time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 115, 86, 201),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
