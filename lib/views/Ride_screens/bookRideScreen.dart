import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safar_project/helper/sizedBox.dart';
import 'package:safar_project/helper/textStyle.dart';

class BookRide extends StatelessWidget {
  const BookRide({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: bodyWidget(height, width),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        icon: const Icon(BootstrapIcons.headset),
        label: const Text(
          "Help",
          style: whitefont14normal,
        ),
      ),
    );
  }

  Widget bodyWidget(double height, double width) {
    return SafeArea(
      child: Stack(
        children: [
          Container(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Pickup Location",
                      style: blackfont14normal,
                    ),
                    sizedboxh7w0,
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey)),
                          isDense: true,
                          hintStyle: greyfont12normal,
                          hintText: "Choose Pickup Location",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.map,
                                color: Colors.green),
                          ),
                          prefixIcon: const Icon(
                            CupertinoIcons.map_pin_ellipse,
                            color: Colors.green,
                          )),
                    ),
                    sizedboxh20w0,
                    const Text(
                      "Select Drop Location",
                      style: blackfont14normal,
                    ),
                    sizedboxh7w0,
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey)),
                          isDense: true,
                          hintStyle: greyfont12normal,
                          hintText: "Choose Drop Location",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.map,
                                color: Colors.redAccent),
                          ),
                          prefixIcon: const Icon(CupertinoIcons.map_pin_ellipse,
                              color: Colors.redAccent)),
                    ),
                    sizedboxh15w0,
                    const Text(
                      "Best Rides for your route",
                      style: orangefont14normal,
                    ),
                    const Divider(
                      endIndent: 2,
                      indent: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: height * 0.26,
                      child: rideListWidget(),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Widget rideListWidget() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) => rideTileWidget(index),
    );
  }

  Widget rideTileWidget(int index) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blueAccent,
                child: Text(index.toString()),
              ),
              sizedboxh0w15,
              const Icon(
                BootstrapIcons.car_front_fill,
                color: Colors.grey,
              ),
              sizedboxh0w5,
              const Text(
                "240",
                style: greyfont12normal,
              )
            ],
          ),
          sizedboxh7w0,
          const Text(
            "Offered by",
            style: greyfont12normal,
          ),
          const Text(
            "Keshav Gautam",
            style: bluefont14normal,
          ),
          sizedboxh10w0,
          const Text(
            "Route",
            style: greyfont12normal,
          ),
          const Text(
            "M.I Road to Tonk Fatak",
            style: blackfont14normal,
          ),
          sizedboxh10w0,
          const Text(
            "Ride Fare",
            style: greyfont12normal,
          ),
          const Text(
            "350/-",
            style: greenfont14normal,
          ),
        ],
      ),
    ));
  }
}
