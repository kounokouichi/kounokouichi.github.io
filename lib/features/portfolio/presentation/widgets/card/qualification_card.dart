import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/constants/app_urls.dart';
import 'package:portfolio/core/utils/url_util.dart';
import 'package:portfolio/features/portfolio/presentation/providers/portfolio_data_provider.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/external_link_item.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/qualification_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';
import 'package:portfolio/shared/widgets/section_title.dart';

class QualificationCard extends ConsumerWidget {
  const QualificationCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(portfolioProvider);

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            icon: Icons.workspace_premium,
            title: '資格 & 外部リンク',
          ),
          const SizedBox(height: 24),
          ...data.qualifications.map((qualification) {
            return QualificationItem(
              title: qualification.title,
              year: qualification.year,
            );
          }),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          ExternalLinkItem(
            icon: Icons.code,
            title: 'GitHub',
            onTap: () {
              UrlUtil.open(AppUrls.github);
            },
          ),
          ExternalLinkItem(
            icon: Icons.business,
            title: 'LinkedIn',
            onTap: () {
              UrlUtil.open(AppUrls.linkedin);
            },
          ),
          ExternalLinkItem(
            icon: Icons.article,
            title: 'Qiita',
            onTap: () {
              UrlUtil.open(AppUrls.qiita);
            },
          ),
        ],
      ),
    );
  }
}
