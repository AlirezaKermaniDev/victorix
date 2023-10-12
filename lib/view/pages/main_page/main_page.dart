import 'package:article/view/logic/main_logic/main_logic.dart';
import 'package:article/view/pages/main_page/screens/main_phone_screen.dart';
import 'package:article/view/pages/main_page/screens/main_web_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class MainPage extends GetResponsiveView<MainLogic> {
  MainPage({super.key}) : super(alwaysUseBuilder: false);

  @override
  Widget phone() => MainPhoneScreen(
        controller: controller,
      );

  @override
  Widget desktop() => MainWebScreen(
        controller: controller,
      );

  @override
  Widget tablet() => MainWebScreen(
        controller: controller,
      );
}
