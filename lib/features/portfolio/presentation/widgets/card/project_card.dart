import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/portfolio/presentation/providers/portfolio_data_provider.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/project_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';
import 'package:portfolio/shared/widgets/section_title.dart';

class ProjectCard extends ConsumerWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(portfolioProvider);
    final isJa = Localizations.localeOf(context).languageCode == 'ja';

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(icon: Icons.apps, title: '個人開発アプリ'),
          const SizedBox(height: 24),
          ...data.projects.map((e) {
            return ProjectItem(
              title: isJa ? e.titleJa : e.titleEn,
              techStack: e.techStack,
              description: isJa ? e.descriptionJa : e.descriptionEn,
            );
          }),
        ],
      ),
    );
  }
}
