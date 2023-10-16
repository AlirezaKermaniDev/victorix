import 'package:article/core/routes/app_pages.dart';
import 'package:article/view/logic/main_logic/main_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class MainPhoneScreen extends StatelessWidget {
  final MainLogic controller;
  const MainPhoneScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.onBackground,
      bottomNavigationBar: Container(
        color: Get.theme.colorScheme.background,
        child: SafeArea(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Get.theme.colorScheme.background,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.03),
                      offset: const Offset(0, -6),
                      blurRadius: 16)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 4,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Get.theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const Icon(OctIcons.home_fill_24),
                    Container(
                      height: 4,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Get.theme.colorScheme.background,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  OctIcons.bell_16,
                  size: 22,
                ),
                const Icon(OctIcons.person_16, size: 22),
                const Icon(OctIcons.gear_16, size: 22),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 53,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Get.theme.colorScheme.background,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.03),
                                  offset: const Offset(0, 0),
                                  blurRadius: 16)
                            ],
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                OctIcons.search_16,
                                color: Get.theme.colorScheme.surface,
                                size: 23,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Search on articles".tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Get.theme.colorScheme.secondary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          Text(
                            "مقالات".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.surface),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "ویدیو ها".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Categories".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "پیام ها".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "اخبار".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "آموزش ها".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "تابلوی امتیازات".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Get.theme.colorScheme.secondary),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Get.theme.colorScheme.onBackground,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                    ],
                  ),
                ),
              ),
              GetBuilder<MainLogic>(
                builder: (logic) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: logic.articles.length,
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      itemBuilder: (context, index) {
                        final item = logic.articles[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed(Routes.ARTICLE_DETAIL,
                                  arguments: item);
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.background,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(.03),
                                        offset: const Offset(0, 0),
                                        blurRadius: 16)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "چهارشنبه ۲۲ دی ۱۴۰۲".tr,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Get
                                                  .theme.colorScheme.secondary),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Get
                                                  .theme.colorScheme.secondary
                                                  .withOpacity(.1)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16,
                                                right: 16,
                                                top: 6,
                                                bottom: 4),
                                            child: Text(
                                              item.category ?? "",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Get.theme.colorScheme
                                                      .primary),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      item.title ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Get.theme.colorScheme.surface),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 200,
                                      width: 500,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.network(
                                          item.imageUrl ?? "",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.more_horiz_rounded,
                                            color: Get
                                                .theme.colorScheme.secondary),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              child: Text(
                                                "102",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Get.theme.colorScheme
                                                        .secondary),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              OctIcons.share_16,
                                              color: Get
                                                  .theme.colorScheme.secondary,
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              child: Text(
                                                "800",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Get.theme.colorScheme
                                                        .secondary),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              OctIcons.comment_16,
                                              color: Get
                                                  .theme.colorScheme.secondary,
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              child: Text(
                                                "200",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Get.theme.colorScheme
                                                        .secondary),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              OctIcons.thumbsup_16,
                                              color: Get
                                                  .theme.colorScheme.secondary,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
