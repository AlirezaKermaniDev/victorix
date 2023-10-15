import 'package:article/domain/entities/article/article_entity/article_entity.dart';
import 'package:get/get.dart';

class ArticleDetailLogic extends GetxController {
   ArticleEntity? articleEntity;

  @override
  void onInit() {
    super.onInit();
    articleEntity = Get.arguments;
  }
}
