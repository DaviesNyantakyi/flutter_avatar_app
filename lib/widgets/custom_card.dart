import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  const MyCustomCard({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(iconData),
              const SizedBox(width: 24),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
