import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const TitleBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('$title'), Icon(icon)],
      ),
    );
  }
}
