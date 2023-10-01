import 'package:get/get.dart';
import 'package:safar_project/controllers/Login%20Controllers/loginController.dart';
import 'package:safar_project/views/Login/login.dart';
import 'package:safar_project/views/Login/register.dart';
import 'package:safar_project/views/Userdashboard/dashboardScreen.dart';
import 'package:safar_project/controllers/Login Controllers/registerController.dart';

class AppRoute extends GetxService {
  static String login = '/login';
  static String splash = '/splash';
  static String dashboard = '/dashboardScreen';
  static String registerScreen= '/registerScreen';

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
          Get.lazyPut(() => DashboardController());
        })),
        GetPage(
        name: registerScreen,
        page: () => RegisterScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => RegisterController());
        }))
  ];
}
