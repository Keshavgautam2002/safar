import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';
import 'package:safar_project/helper/colors%20and%20style/colors.dart';
import 'package:safar_project/helper/colors%20and%20style/textStyle.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Safar",
          style: whitefont20semibold,
        ),
        backgroundColor: blueColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      body: bodyWidget(),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Developed By",
                style: TextStyle(
                    color: Colors.red.shade500,
                    fontWeight: FontWeight.w500,
                    fontFamily: "mon",
                    fontSize: 9)),
            const Text("Safar & Team",
                style: TextStyle(
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "mon",
                    fontSize: 11)),
          ],
        ),
      ),
    );
  }

  Widget bodyWidget() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.bookRide);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/car_background.jpg"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 5,
                        spreadRadius: 5,
                        offset: const Offset(4, 4))
                  ]),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              margin: const EdgeInsets.all(10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Book Ride",
                    style: TextStyle(
                        fontFamily: "mon",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Book a ride and\nreach your destination.",
                    style: TextStyle(
                        fontFamily: "mon",
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.giveRide);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/car_background.jpg"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 5,
                        spreadRadius: 5,
                        offset: const Offset(4, 4))
                  ]),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              margin: const EdgeInsets.all(10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Give Ride",
                    style: TextStyle(
                        fontFamily: "mon",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Give a ride and earn\nmoney while riding.",
                    style: TextStyle(
                        fontFamily: "mon",
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
