import 'package:article/core/languages/fa_pe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'en_us.dart';

class TranslationService extends Translations {
  Locale? get locale => const Locale('fa', 'pe');
  final fallbackLocale = const Locale('fa', 'pe');

  @override
  Map<String, Map<String, String>> get keys => {
        "fa_PE": fa_pe,
        "en_US": en_US,
      };
}
