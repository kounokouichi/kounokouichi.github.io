import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/section_title.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool titleVisible;
  final List<Widget> children;

  const SectionCard({
    super.key,
    this.title = '',
    this.icon = Icons.code,
    this.titleVisible = true,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: titleVisible,
              child: SectionTitle(icon: icon, title: title),
            ),
            Visibility(
              visible: titleVisible,
              child: const SizedBox(height: 24),
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}
