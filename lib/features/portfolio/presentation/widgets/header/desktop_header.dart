import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/language_switcher.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          const Icon(Icons.code),
          const SizedBox(width: 12),
          const Text('Taro Yamada'),
          const Spacer(),
          _NavItem(label: 'HOME', onTap: () {}),
          _NavItem(label: 'PROJECTS', onTap: () {}),
          _NavItem(label: 'EXPERIENCE', onTap: () {}),
          _NavItem(label: 'SKILLS', onTap: () {}),
          const SizedBox(width: 16),
          const LanguageSwitcher(),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavItem({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextButton(onPressed: onTap, child: Text(label)),
    );
  }
}
