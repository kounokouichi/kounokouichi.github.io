import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String period;
  final String title;
  final String role;
  final String description;

  const ExperienceItem({
    super.key,
    required this.period,
    required this.title,
    required this.role,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              period,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(role),
                const SizedBox(height: 8),
                Text(description, softWrap: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
