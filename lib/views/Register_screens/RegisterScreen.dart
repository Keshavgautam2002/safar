import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/controllers/Login%20Controllers/registerController.dart';
import 'package:safar_project/helper/Images/images.dart';
import 'package:safar_project/helper/colors%20and%20style/colors.dart';
import 'package:safar_project/helper/colors%20and%20style/sizedBox.dart';
import 'package:safar_project/helper/colors%20and%20style/textStyle.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final controller = Get.find<RegisterController>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> vehicleFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            stepsWidget(),
            sizedboxh20w0,
            sizedboxh20w0,
            GetBuilder<RegisterController>(builder: (context) {
              return Visibility(
                  visible: controller.index.value == 0,
                  child: userRegisterWidget());
            }),
            GetBuilder<RegisterController>(builder: (context) {
              return Visibility(
                  visible: controller.index.value == 1,
                  child: vehicleRegisterWidget());
            })
          ]),
        ),
      ),
    );
  }

  Widget stepsWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                padding: const EdgeInsets.all(5),
                child: Image.asset(userRegister),
              ),
              sizedboxh5w0,
              GetBuilder<RegisterController>(builder: (_) {
                return Row(
                  children: [
                    Text(
                      "User Registration ",
                      style: controller.isUserRegisterDone
                          ? greenfont14normal
                          : redfont14normal,
                    ),
                    Visibility(
                      visible: controller.isUserRegisterDone,
                      child: Icon(
                        Icons.check,
                        color: green,
                      ),
                    )
                  ],
                );
              })
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                padding: const EdgeInsets.all(5),
                child: Image.asset(vehicleRegister),
              ),
              sizedboxh5w0,
              GetBuilder<RegisterController>(builder: (_) {
                return Row(
                  children: [
                    Text(
                      "Vehicle Registration ",
                      style: controller.isVehicleRegisterDone
                          ? greenfont14normal
                          : redfont14normal,
                    ),
                    Visibility(
                      visible: controller.isVehicleRegisterDone,
                      child: Icon(
                        Icons.check,
                        color: green,
                      ),
                    )
                  ],
                );
              })
            ],
          )
        ],
      ),
    );
  }

  Widget vehicleRegisterWidget() {
    return Form(
      key: vehicleFormKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            const Text(
              "* Fields is mandatory",
              style: greyfont12normal,
            ),
            sizedboxh20w0,
            sizedboxh15w0,
            const Text(
              "Vehicle Type",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            DropdownButtonFormField(
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null) {
                  return "Select a vehicle type";
                }
                return null;
              },
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
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  BootstrapIcons.search,
                  color: Colors.blue,
                ),
                hintText: "Choose a vehicle type",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Enter Vehicle Brand",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null) {
                  return "Enter Valid Vehicle Brand";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  BootstrapIcons.car_front,
                  color: Colors.blue,
                ),
                hintText: "Vehicle Brand",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Enter Vehicle Registration Number",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null) {
                  return "Enter Valid Vehicle Registration Number";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  BootstrapIcons.type,
                  color: Colors.blue,
                ),
                hintText: "Vehicle Registration Number",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Vehicle Sitting Capacity",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              keyboardType: TextInputType.number,
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value == "") {
                  return "Enter Valid Sitting Capacity";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.person_2,
                  color: Colors.blue,
                ),
                hintText: "Vehicle Sitting Capacity",
                hintStyle: greyfont12normal,
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
              height: 25,
            ),
            InkWell(
              onTap: () {
                if (vehicleFormKey.currentState!.validate()) {
                  controller.updaetVehicleBool(true);
                  controller.updateIndex();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green),
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
        ),
      ),
    );
  }

  Widget userRegisterWidget() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            const Text(
              "* Fields is mandatory",
              style: greyfont12normal,
            ),
            sizedboxh20w0,
            sizedboxh10w0,
            const Text(
              "Enter Your Name*",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null) {
                  return "Enter Your Name";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                ),
                hintText: "Name",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Enter Your Email Id",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null || !value.contains("@")) {
                  return "Enter Valid Mail-Id";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.mail,
                  color: Colors.blue,
                ),
                hintText: "Email-id",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Enter Your Phone No.",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            TextFormField(
              keyboardType: TextInputType.number,
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null || value.length < 10) {
                  return "Enter Valid Phone No.";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.phone,
                  color: Colors.blue,
                ),
                hintText: "Phone No.",
                hintStyle: greyfont12normal,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                isDense: true,
              ),
            ),
            sizedboxh15w0,
            const Text(
              "Enter Document",
              style: blackfont14normal,
            ),
            sizedboxh5w0,
            DropdownButtonFormField(
              style: greyfont14normal,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == "" || value == null) {
                  return "choose A Valid Document";
                }
                return null;
              },
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
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.doc,
                  color: Colors.blue,
                ),
                hintText: "Choose a document type",
                hintStyle: greyfont12normal,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedboxh15w0,
                      const Text(
                        "Enter Document Id",
                        style: blackfont14normal,
                      ),
                      sizedboxh5w0,
                      TextFormField(
                        style: greyfont14normal,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value == "") {
                            return "Enter Valid Document Id";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            CupertinoIcons.doc_chart,
                            color: Colors.blue,
                          ),
                          hintText: "Phone No.",
                          hintStyle: greyfont12normal,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          isDense: true,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  controller.updaetUserBool(true);
                  controller.updateIndex();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.green),
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
        ),
      ),
    );
  }
}
