import 'package:article/domain/usecases/article_usecases/get_all_articles_usecase.dart';
import 'package:article/injection/injection.dart';
import 'package:article/view/logic/main_logic/main_logic.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainLogic(getIt<GetAllArticlesUseCase>()));
  }
}
