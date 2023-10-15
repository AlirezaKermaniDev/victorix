import 'package:article/view/logic/article_detail_logic/article_detail_logic.dart';
import 'package:article/view/pages/main_page/screens/main_web_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleDetailWebScreen extends StatelessWidget {
  final ArticleDetailLogic controller;
  const ArticleDetailWebScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainPageHeaderWidget(),
              SizedBox(
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    Text(
                      controller.articleEntity?.title ?? "",
                      style: TextStyle(
                          color: Get.theme.colorScheme.surface,
                          fontWeight: FontWeight.w900,
                          fontSize: 45),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Divider(
                      thickness: 1,
                      height: 1.3,
                      color: Get.theme.colorScheme.secondary.withOpacity(.1),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.articleEntity?.category.toString() ?? "",
                          style: TextStyle(
                              color: Get.theme.colorScheme.surface,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          "چهارشنبه ۲۲ دی ۱۴۰۲".tr,
                          style: TextStyle(
                              color: Get.theme.colorScheme.surface,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 1,
                      height: 1.3,
                      color: Get.theme.colorScheme.secondary.withOpacity(.1),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Text(
                      controller.articleEntity?.description ?? "",
                      style: TextStyle(
                          color: Get.theme.colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Image.network(
                      controller.articleEntity?.imageUrl ?? "",
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Divider(
                      thickness: 1,
                      height: 1.3,
                      color: Get.theme.colorScheme.secondary.withOpacity(.1),
                    ),
                    if (controller.articleEntity?.details != null &&
                        controller.articleEntity!.details!.isNotEmpty)
                      ...controller.articleEntity!.details!
                          .map((e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    e.title ?? "",
                                    style: TextStyle(
                                        color: Get.theme.colorScheme.surface,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    e.description ?? "",
                                    style: TextStyle(
                                        color: Get.theme.colorScheme.surface,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Image.network(
                                    e.imageUrl ?? "",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              ))
                          .toList(),
                    const SizedBox(
                      height: 64,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
