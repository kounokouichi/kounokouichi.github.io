import 'package:flutter/material.dart';

class StrengthItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const StrengthItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 4),
              Text(description, softWrap: true),
            ],
          ),
        ),
      ],
    );
  }
}
