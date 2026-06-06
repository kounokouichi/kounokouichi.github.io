import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/strength_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';
import 'package:portfolio/shared/widgets/section_title.dart';

class StrengthCard extends StatelessWidget {
  const StrengthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(icon: Icons.code, title: '得意領域'),
          SizedBox(height: 24),
          StrengthItem(
            icon: Icons.phone_android,
            title: 'モバイルアプリ開発',
            description: 'Flutterを中心にiOS / Android開発経験があります。',
          ),
          SizedBox(height: 24),
          StrengthItem(
            icon: Icons.account_tree,
            title: 'アーキテクチャ設計',
            description: '保守性・拡張性を意識した設計を行います。',
          ),
          SizedBox(height: 24),
          StrengthItem(
            icon: Icons.groups,
            title: 'チーム開発',
            description: 'レビューや進行管理の経験があります。',
          ),
          SizedBox(height: 24),
          StrengthItem(
            icon: Icons.monitor,
            title: '品質改善',
            description: 'CI/CDやテスト自動化に取り組んでいます。',
          ),
          SizedBox(height: 24),
          StrengthItem(
            icon: Icons.language,
            title: '英語対応',
            description: 'TOEIC860点。英語技術文書の読解が可能です。',
          ),
        ],
      ),
    );
  }
}
