import 'package:flutter/material.dart';
import 'package:my_card_app/screens/home_screen.dart';
import 'package:my_card_app/widgets/custom_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}



