import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';
import 'package:safar_project/controllers/Login%20Controllers/registerController.dart';
import 'package:safar_project/helper/Images/images.dart';
import 'package:safar_project/helper/colors%20and%20style/colors.dart';
import 'package:safar_project/helper/colors%20and%20style/sizedBox.dart';
import 'package:safar_project/helper/colors%20and%20style/textStyle.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(children: []),
      ),
    );
  }

  Widget stepsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: const AssetImage(userRegister),
              backgroundColor: green,
            ),
            sizedboxh5w0,
            const Text(
              "User Registration",
              style: greenfont12normal,
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: const AssetImage(userRegister),
              backgroundColor: green,
            ),
            sizedboxh5w0,
            const Text(
              "User Registration",
              style: greenfont12normal,
            )
          ],
        )
      ],
    );
  }

  Widget vehicleRegisterWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Register your vehicle",
          style: TextStyle(
              fontFamily: "mon",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        const SizedBox(
          height: 7,
        ),
        DropdownButtonFormField(
          items: controller.vehicleType.map((String e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e.toString()),
            );
          }).toList(),
          onChanged: (value) {},
          style: const TextStyle(fontFamily: "mon", color: Colors.grey),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              CupertinoIcons.doc,
              color: Colors.blue,
            ),
            hintText: "Choose vehicle type",
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
            hintText: "Vehicle Brand",
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
            hintText: "Vehicle Registration Number",
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
            hintText: "Vehicle Sitting Capacity",
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
            hintText: "Vehicle Owner Name",
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
        InkWell(
          onTap: () {
            controller.updaetVehicleBool(true);
            controller.updateIndex();
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.green),
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: const Text(
              "Complete Registration",
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
      ],
    );
  }

  Widget userRegisterWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
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
            controller.updaetUserBool(true);
            controller.updateIndex();
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.green),
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: const Text(
              "Next",
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
      ],
    );
  }
}
