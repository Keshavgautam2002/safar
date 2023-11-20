import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Get.offAndToNamed(AppRoute.login),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Safar",
                style: TextStyle(
                    fontFamily: "mon",
                    fontSize: 65,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ),
            ),
            const Center(
              child: Text(
                "Car Pool App",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'mon'),
              ),
            ),
            Center(
              child: Hero(
                  tag: "login",
                  child: Image.asset('assets/images/car_pool.jpg')),
            )
          ],
        ),
      ),
    );
  }
}
