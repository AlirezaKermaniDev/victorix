import 'package:article/view/logic/article_detail_logic/article_detail_logic.dart';
import 'package:get/get.dart';

class ArticleDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticleDetailLogic());
  }
}
