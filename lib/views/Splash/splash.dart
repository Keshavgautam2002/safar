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
      Duration(
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Safar",
                style: TextStyle(
                    fontFamily: "mon",
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
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
              child: Image.asset('assets/images/car_pool.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
