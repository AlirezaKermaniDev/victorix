import 'package:article/domain/entities/article/article_entity/article_entity.dart';
import 'package:article/domain/usecases/article_usecases/get_all_articles_usecase.dart';
import 'package:get/get.dart';

class MainLogic extends GetxController {
  final GetAllArticlesUseCase getAllArticlesUseCase;
  MainLogic(this.getAllArticlesUseCase);
  List<ArticleEntity> articles = [];
  getArticles() async {
    final result = await getAllArticlesUseCase();
    result.fold((l) => null, (r) {
      articles = r.data ?? [];
      update();
    });
  }

  @override
  void onInit() {
    super.onInit();
    getArticles();
  }
}
