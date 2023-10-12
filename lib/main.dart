import 'package:article/core/languages/translation_service.dart';
import 'package:article/core/routes/app_pages.dart';
import 'package:article/core/theme/app_theme.dart';
import 'package:article/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      title: "Victorix",
      debugShowCheckedModeBanner: false,
      enableLog: true,
      theme: AppTheme.light,
      getPages: AppPages.routes,
      locale: const Locale("fa"),
      defaultTransition: Transition.noTransition,
      translations: TranslationService(),
    );
  }
}
