import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar_project/Routes/app_pages.dart';
import 'package:safar_project/helper/colors%20and%20style/colors.dart';
import 'package:safar_project/helper/colors%20and%20style/sizedBox.dart';
import 'package:safar_project/helper/colors%20and%20style/textStyle.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Safar",
          style: blacksemibold,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Get.offAndToNamed(AppRoute.bookRide);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey.shade200,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: const Column(
                        children: [
                          Icon(
                            BootstrapIcons.car_front_fill,
                            color: Colors.green,
                          ),
                          sizedboxh10w0,
                          Text(
                            "Give a ride",
                            style: blackfont14normal,
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.shade200,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: const Column(
                      children: [
                        Icon(
                          BootstrapIcons.person_raised_hand,
                          color: Colors.blue,
                        ),
                        sizedboxh10w0,
                        Text(
                          "Take a ride",
                          style: blackfont14normal,
                        )
                      ],
                    ),
                  ))
                ],
              ),
              sizedboxh10w0,
              const Text(
                "  Your Recent Rides",
                style: blackfont14normal,
              ),
              const Divider(
                endIndent: 5,
                indent: 5,
                color: Colors.grey,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) => recentRideTiles(),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget recentRideTiles() {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        minLeadingWidth: 5,
        leading: Icon(
          BootstrapIcons.car_front_fill,
          color: green,
        ),
        trailing: const Text(
          "Earned\n200/-",
          style: greenfont12normal,
          textAlign: TextAlign.center,
        ),
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jaipur -> Kota",
              style: greyfont14normal,
            ),
            Text(
              "23 Nov 2023 12:45 PM",
              style: greyfont14normal,
            )
          ],
        ),
        title: const Text.rich(TextSpan(children: [
          TextSpan(text: "Shared with: ", style: greyfont12normal),
          TextSpan(text: "keshav Gautam", style: blackfont14normal)
        ])),
      ),
    );
  }
}
