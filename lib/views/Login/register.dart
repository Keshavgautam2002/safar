import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';
import 'package:safar_project/controllers/Login%20Controllers/registerController.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Hero(
                tag: "login", child: Image.asset("assets/images/car_pool.jpg")),
            const Text(
              "Welcome to",
              style: TextStyle(
                  fontFamily: "mon",
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Safar - the car pool app",
              style: TextStyle(
                  fontFamily: "mon",
                  fontSize: 25,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Create your account",
              style: TextStyle(
                  fontFamily: "mon",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                ),
                hintText: "Your Name",
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
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.mail,
                  color: Colors.blue,
                ),
                hintText: "Email Id",
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
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.phone,
                  color: Colors.blue,
                ),
                hintText: "Phone No.",
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
            DropdownButtonFormField(
              items: controller.docTypes.map((String e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e.toString()),
                );
              }).toList(),
              onChanged: (value) {
                controller.docTypeChoosed = value.toString();
                controller.update();
              },
              style: const TextStyle(fontFamily: "mon", color: Colors.grey),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.doc,
                  color: Colors.blue,
                ),
                hintText: "Choose a document type",
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
            GetBuilder<RegisterController>(
              builder: (_) {
                return Visibility(
                  visible: controller.docTypeChoosed.isNotEmpty,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.doc_append,
                        color: Colors.blue,
                      ),
                      hintText: "Enter Document Id",
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
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Get.offAndToNamed(AppRoute.login);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green),
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text(
                  "Register to SAFAR",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "mon",
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ]),
        ),
      )),
    );
  }
}
