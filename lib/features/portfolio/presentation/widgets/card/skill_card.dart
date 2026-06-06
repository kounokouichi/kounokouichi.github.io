import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/section_card.dart';
import 'package:portfolio/shared/widgets/section_title.dart';
import 'package:portfolio/shared/widgets/skill_chip.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(icon: Icons.code, title: '保持スキル'),
          const SizedBox(height: 24),
          _group('言語', [
            'Dart',
            'Kotlin',
            'Swift',
            'JavaScript',
            'TypeScript',
            'HTML/CSS',
          ]),
          const SizedBox(height: 24),
          _group('フレームワーク', [
            'Flutter',
            'Android SDK',
            'iOS SDK',
            'Vue.js',
            'Node.js',
            'Laravel',
          ]),
          const SizedBox(height: 24),
          _group('ツール', [
            'VS Code',
            'Android Studio',
            'Xcode',
            'Git / GitHub',
            'Docker',
            'Figma',
          ]),
        ],
      ),
    );
  }

  Widget _group(String title, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map((e) => SkillChip(label: e)).toList(),
        ),
      ],
    );
  }
}
