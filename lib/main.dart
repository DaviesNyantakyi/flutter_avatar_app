import 'package:flutter/material.dart';
import 'package:my_card_app/widgets/custom_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Avatar(),
              Divider(),
              _ContactInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/20230815_180045 (1).jpg',
            ),
          ),
        ),
        Text(
          'Davies Nyantakyi',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCustomCard(
          iconData: Icons.phone,
          text: '+32 465252424',
        ),
        SizedBox(height: 8),
        MyCustomCard(
          iconData: Icons.phone,
          text: 'davies.nyantakyi@outlook.com',
        )
      ],
    );
  }
}
