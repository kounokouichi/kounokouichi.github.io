import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/language_switcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('HOME'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('PROJECTS'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('EXPERIENCE'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('SKILLS'),
              onTap: () {},
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: LanguageSwitcher(),
            ),
          ],
        ),
      ),
    );
  }
}
