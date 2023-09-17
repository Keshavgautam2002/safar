import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/views/Login/login.dart';

class AppRoute extends GetxService {
  static String login = '/login';
  static String splash = '/splash';

  static List<GetPage> pages = [
    GetPage(
        name: login,
        page: () => const LoginScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => null);
        }))
  ];
}
