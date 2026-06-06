import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final String techStack;
  final String description;

  const ProjectItem({
    super.key,
    required this.title,
    required this.techStack,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(techStack, style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 12),
          Text(description, softWrap: true),
        ],
      ),
    );
  }
}
