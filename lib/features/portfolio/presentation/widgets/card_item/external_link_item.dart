import 'package:flutter/material.dart';

class ExternalLinkItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ExternalLinkItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.open_in_new),
      onTap: onTap,
    );
  }
}
