import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/portfolio/presentation/providers/portfolio_data_provider.dart';
import 'package:portfolio/shared/widgets/section_card.dart';
import 'package:portfolio/shared/widgets/skill_chip.dart';

class SkillCard extends ConsumerWidget {
  const SkillCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(portfolioProvider);
    return SectionCard(
      title: '保持スキル',
      icon: Icons.code,
      children: [
        _group('言語', data.languages),
        const SizedBox(height: 24),
        _group('フレームワーク', data.frameworks),
        const SizedBox(height: 24),
        _group('ツール', data.tools),
      ],
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
