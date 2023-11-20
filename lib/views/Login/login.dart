import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';
import 'package:safar_project/controllers/Login%20Controllers/loginController.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                      tag: "login",
                      child: Image.asset("assets/images/car_pool.jpg")),
                  const Text(
                    "Login to continue",
                    style: TextStyle(fontSize: 20, fontFamily: "mon"),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.person,
                        color: Colors.blue,
                      ),
                      hintText: "Username",
                      hintStyle: const TextStyle(
                          fontFamily: "mon", fontSize: 14, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      isDense: true,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  GetBuilder<LoginController>(builder: (_) {
                    return TextField(
                      obscureText: !controller.showPassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          CupertinoIcons.lock,
                          color: Colors.blue,
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              controller.showPassword =
                                  !controller.showPassword;
                              controller.update();
                            },
                            child: controller.showPassword
                                ? const Icon(
                                    CupertinoIcons.eye_slash,
                                    color: Colors.blue,
                                  )
                                : const Icon(
                                    CupertinoIcons.eye,
                                    color: Colors.blue,
                                  )),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            fontFamily: "mon",
                            fontSize: 14,
                            color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        isDense: true,
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(AppRoute.dashboard);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.green),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "mon",
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                      Text("  OR  "),
                      Expanded(child: Divider(thickness: 2))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey.shade200),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login With ",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "mon",
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/google_icon.png",
                          height: 20,
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoute.registerScreen);
                        },
                        child: const Text("Don't have account? Sign Up")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
