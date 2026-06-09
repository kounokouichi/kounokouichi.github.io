import 'package:flutter/material.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.code),
          const SizedBox(width: 12),
          const Expanded(child: Text('Kouichi Kono')),
          // IconButton(
          //   icon: const Icon(Icons.menu),
          //   onPressed: () {
          //     Scaffold.of(context).openEndDrawer();
          //   },
          // ),
        ],
      ),
    );
  }
}
