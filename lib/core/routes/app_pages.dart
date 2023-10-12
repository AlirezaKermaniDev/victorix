import 'package:article/view/logic/main_logic/main_binding.dart';
import 'package:article/view/pages/main_page/main_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: Routes.MAIN,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
  ];
}
