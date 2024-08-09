import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String text;
  const Categories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
      ),
    );
  }
}
