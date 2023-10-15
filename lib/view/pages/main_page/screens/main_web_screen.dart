import 'package:article/core/routes/app_pages.dart';
import 'package:article/view/logic/main_logic/main_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWebScreen extends StatelessWidget {
  final MainLogic controller;

  const MainWebScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      body: const Column(
        children: [MainPageHeaderWidget(), _MainPageBodyWidget()],
      ),
    );
  }
}

class _MainPageBodyWidget extends StatelessWidget {
  const _MainPageBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 1100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 0, right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Get.theme.colorScheme.surface),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "۲۲ دی ۱۴۰۲",
                      style: TextStyle(
                          fontSize: 14, color: Get.theme.colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Divider(
                        thickness: 1,
                        height: 1.3,
                        color: Get.theme.colorScheme.secondary.withOpacity(.1),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Articles number".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Get.theme.colorScheme.surface),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "۱۴۰۲",
                      style: TextStyle(
                          fontSize: 14, color: Get.theme.colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Divider(
                        thickness: 1,
                        height: 1.3,
                        color: Get.theme.colorScheme.secondary.withOpacity(.1),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Categories".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Get.theme.colorScheme.surface),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      children: [
                        "Dota 2",
                        "CS 2",
                        "The International 2023",
                        "The International 2019",
                        "Dota 2 Heros"
                      ]
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 12, left: 6, right: 6),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.secondary
                                          .withOpacity(.05),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, bottom: 4, top: 7),
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Get.theme.colorScheme.surface),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 1,
              height: Get.height,
              color: Get.theme.colorScheme.secondary.withOpacity(.1),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Recent Articles".tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Get.theme.colorScheme.surface),
                                  ),
                                ],
                              ),
                              GetBuilder<MainLogic>(builder: (logic) {
                                return GridView.builder(
                                    itemCount: logic.articles.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 50),
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 500,
                                            childAspectRatio: Get.width < 795
                                                ? 1.5
                                                : Get.width > 1000
                                                    ? 1.2
                                                    : 1,
                                            mainAxisSpacing: 32,
                                            crossAxisSpacing: 32),
                                    itemBuilder: (context, index) {
                                      final item = logic.articles[index];
                                      return InkWell(
                                        onTap: () {
                                          Get.toNamed(Routes.ARTICLE_DETAIL,
                                              arguments: item);
                                        },
                                        child: Ink(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 140,
                                                  width: 500,
                                                  child: Image.network(
                                                    item.imageUrl ?? "",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      item.category ?? "",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 13,
                                                          color: Get
                                                              .theme
                                                              .colorScheme
                                                              .surface),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "چهارشنبه ۲۲ دی ۱۴۰۲".tr,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                          color: Get
                                                              .theme
                                                              .colorScheme
                                                              .secondary),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  item.title ?? "",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: true,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 20,
                                                      color: Get.theme
                                                          .colorScheme.surface),
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    item.description ?? "",
                                                    maxLines: 3,
                                                    overflow: TextOverflow.fade,
                                                    softWrap: true,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color: Get
                                                            .theme
                                                            .colorScheme
                                                            .secondary),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class MainPageHeaderWidget extends StatelessWidget {
  const MainPageHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      decoration:
          BoxDecoration(color: Get.theme.colorScheme.primary.withOpacity(.02)),
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 12),
        child: Center(
          child: SizedBox(
            width: 1100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "VictoriX",
                      style: TextStyle(
                          color: Get.theme.colorScheme.surface,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Articles".tr,
                          style: TextStyle(
                              color: Get.theme.colorScheme.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: "vazir"),
                        ),
                        // Text(
                        //   "Importans Videos".tr,
                        //   style: TextStyle(
                        //     color: Get.theme.colorScheme.surface,
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.w500,
                        //   ),
                        // ),
                        Text(
                          "Settings".tr,
                          style: TextStyle(
                            color: Get.theme.colorScheme.surface,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "About us".tr,
                          style: TextStyle(
                            color: Get.theme.colorScheme.surface,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: Image.network(
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                                fit: BoxFit.fitHeight,
                              ).image,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
