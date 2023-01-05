import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String icon, title;
  final double size;

  const MenuButton(
      {super.key, required this.icon, required this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          height: size,
          width: size,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 12.5),
        ),
      ],
    );
  }
}
