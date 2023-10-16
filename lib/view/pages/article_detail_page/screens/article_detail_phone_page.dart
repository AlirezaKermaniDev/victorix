import 'package:article/view/logic/article_detail_logic/article_detail_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class ArticleDetailPhoneScreen extends StatelessWidget {
  final ArticleDetailLogic controller;
  const ArticleDetailPhoneScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 12,
        shadowColor: Colors.black.withOpacity(.15),
        backgroundColor: Get.theme.colorScheme.background,
        foregroundColor: Get.theme.colorScheme.surface,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              OctIcons.arrow_right_16,
              color: Get.theme.colorScheme.surface,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                OctIcons.bookmark_16,
                color: Get.theme.colorScheme.surface,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                OctIcons.share_16,
                color: Get.theme.colorScheme.surface,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_rounded,
                color: Get.theme.colorScheme.surface,
              )),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    controller.articleEntity?.imageUrl ?? "",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  controller.articleEntity?.title ?? "",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.theme.colorScheme.surface,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  controller.articleEntity?.description ?? "",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Get.theme.colorScheme.surface,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
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
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Get.theme.colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Text(
                      "چهارشنبه ۲۲ دی ۱۴۰۲".tr,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Get.theme.colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
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
                if (controller.articleEntity?.details != null &&
                    controller.articleEntity!.details!.isNotEmpty)
                  ...controller.articleEntity!.details!
                      .map((e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  e.imageUrl ?? "",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                e.title ?? "",
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Get.theme.colorScheme.surface,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                e.description ?? "",
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Get.theme.colorScheme.surface,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ],
                          ))
                      .toList(),
                const SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
