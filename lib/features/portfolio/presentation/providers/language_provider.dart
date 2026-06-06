import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final languageProvider = NotifierProvider<LanguageNotifier, Locale>(
  LanguageNotifier.new,
);

class LanguageNotifier extends Notifier<Locale> {
  @override
  Locale build() {
    return const Locale('ja');
  }

  void switchLanguage() {
    state = state.languageCode == 'ja'
        ? const Locale('en')
        : const Locale('ja');
  }
}
