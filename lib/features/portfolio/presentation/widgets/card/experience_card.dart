import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/portfolio/presentation/providers/portfolio_data_provider.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/experience_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';

class ExperienceCard extends ConsumerWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(portfolioProvider);
    final isJa = Localizations.localeOf(context).languageCode == 'ja';

    return SectionCard(
      title: '過去案件情報',
      icon: Icons.work,
      children: [
        ...data.experiences.map((e) {
          return ExperienceItem(
            period: e.period,
            title: isJa ? e.titleJa : e.titleEn,
            role: isJa ? e.roleJa : e.roleEn,
            description: isJa ? e.descriptionJa : e.descriptionEn,
          );
        }),
      ],
    );
  }
}
