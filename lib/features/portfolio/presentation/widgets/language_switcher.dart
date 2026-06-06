import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/portfolio/presentation/providers/language_provider.dart';

class LanguageSwitcher extends ConsumerWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);

    return OutlinedButton(
      onPressed: () {
        ref.read(languageProvider.notifier).switchLanguage();
      },
      child: Text(locale.languageCode == 'ja' ? 'EN' : 'JP'),
    );
  }
}
