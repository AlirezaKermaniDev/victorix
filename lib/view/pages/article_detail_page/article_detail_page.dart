import 'package:article/view/logic/article_detail_logic/article_detail_logic.dart';
import 'package:article/view/pages/article_detail_page/screens/article_detail_phone_page.dart';
import 'package:article/view/pages/article_detail_page/screens/article_detail_web_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class ArticleDetailPage extends GetResponsiveView<ArticleDetailLogic> {
  ArticleDetailPage({super.key}) : super(alwaysUseBuilder: false);

  @override
  Widget phone() => ArticleDetailPhoneScreen(
        controller: controller,
      );

  @override
  Widget desktop() => ArticleDetailWebScreen(
        controller: controller,
      );

  @override
  Widget tablet() => ArticleDetailWebScreen(
        controller: controller,
      );
}
