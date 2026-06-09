import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/strength_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';

class StrengthCard extends StatelessWidget {
  const StrengthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionCard(
      title: '得意領域',
      icon: Icons.code,
      children: [
        StrengthItem(
          icon: Icons.phone_android,
          title: 'モバイルアプリ開発',
          description: 'Flutterを中心にiOS / Android開発経験があります',
        ),
        SizedBox(height: 24),
        StrengthItem(
          icon: Icons.account_tree,
          title: 'レガシーシステム保守・改善',
          description: '属人化したシステムの理解と改善が得意です',
        ),
        SizedBox(height: 24),
        StrengthItem(
          icon: Icons.groups,
          title: 'メンバー育成・支援',
          description: 'キャリア相談や情報共有を通じて、メンバーの成長を支援しています',
        ),
        SizedBox(height: 24),
        StrengthItem(
          icon: Icons.language,
          title: '英語対応',
          description: 'TOEIC770点。英語技術文書の読解が可能です',
        ),
      ],
    );
  }
}
