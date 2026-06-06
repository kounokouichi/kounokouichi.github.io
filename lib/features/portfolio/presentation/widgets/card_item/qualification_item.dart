import 'package:flutter/material.dart';

class QualificationItem extends StatelessWidget {
  final String title;
  final String year;

  const QualificationItem({super.key, required this.title, required this.year});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.workspace_premium),
      title: Text(title),
      trailing: Text(year),
    );
  }
}
