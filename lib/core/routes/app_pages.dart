import 'package:article/view/logic/article_detail_logic/article_detail_binding.dart';
import 'package:article/view/logic/main_logic/main_binding.dart';
import 'package:article/view/pages/article_detail_page/article_detail_page.dart';
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
    GetPage(
      name: Routes.ARTICLE_DETAIL,
      page: () => ArticleDetailPage(),
      binding: ArticleDetailBinding(),
    ),
  ];
}
