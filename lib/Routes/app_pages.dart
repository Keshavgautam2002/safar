import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/controllers/loginController.dart';
import 'package:safar_project/views/Login/login.dart';
import 'package:safar_project/views/Userdashboard/dashboardScreen.dart';

class AppRoute extends GetxService {
  static String login = '/login';
  static String splash = '/splash';
  static String dashboard = '/dashboardScreen';

  static List<GetPage> pages = [
    GetPage(
        name: login,
        page: () => LoginScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => LoginController());
        })),
        GetPage(
        name: login,
        page: () => DashboardScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => null);
        }))
  ];
}
