import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card_item/profile_info_item.dart';
import 'package:portfolio/shared/widgets/section_card.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titleVisible: false,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(radius: 72, child: Icon(Icons.person, size: 72)),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '高野 公一',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'モバイルアプリエンジニア',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  const Text('Flutterを中心にiOS / Androidアプリ開発を行っています。'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Divider(),
        const SizedBox(height: 24),
        const ProfileInfoItem(
          icon: Icons.work_outline,
          title: '実務経験',
          value: '5年',
        ),
        const SizedBox(height: 24),
        const ProfileInfoItem(
          icon: Icons.location_on,
          title: '拠点',
          value: '大阪府（リモート可）',
        ),
        const SizedBox(height: 24),
        const ProfileInfoItem(
          icon: Icons.language,
          title: '対応経験業務',
          value: '要件定義 / 設計 / 開発',
        ),
      ],
    );
  }
}
