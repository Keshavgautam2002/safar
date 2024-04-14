import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:safar_project/controllers/Ride_screens_controllers/bookRideController.dart';
import 'package:safar_project/helper/colors%20and%20style/sizedBox.dart';

class BookRide extends StatelessWidget {
  BookRide({super.key});

  final controller = Get.find<BookRideController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: bodyWidget(height, width),
    );
  }

  Widget bodyWidget(double height, double width) {
    return Stack(
      children: [
        mapWidget(),
        destinationDetailsWidget(),
        locationFetchingWidget(),
      ],
    );
  }

  Widget mapWidget() {
    return GetBuilder<BookRideController>(builder: (_) {
      return GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            controller.cameraPosition ?? controller.kGooglePlex,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        onLongPress: (latLng) {
          HapticFeedback.heavyImpact();
          controller.setMarkerToLocation(latLng);
        },
        markers: controller.markerSet,
        onMapCreated: (GoogleMapController mapController) {
          controller.mapController = mapController;
          controller.update();
        },
      );
    });
  }

  Widget locationFetchingWidget() {
    return GetBuilder<BookRideController>(builder: (_) {
      return Visibility(
        visible: controller.isLocationFetching,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            child: const Text("Fetching Location..."),
          ),
        ),
      );
    });
  }

  Widget destinationDetailsWidget() {
    return GetBuilder<BookRideController>(builder: (_) {
      return Visibility(
        visible: controller.isDetailsVisible,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(4, 4),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ]),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Destination Details-",
                  style: TextStyle(
                    fontFamily: "mon",
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
                const Divider(),
                const Text(
                  "Address-",
                  style: TextStyle(color: Colors.amber),
                ),
                Text(controller.locationAddress,
                    style: const TextStyle(
                      fontFamily: "mon",
                      fontSize: 13,
                      color: Colors.black,
                    )),
                sizedboxh7w0,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total Distance-",
                          style: TextStyle(color: Colors.amber),
                        ),
                        Text(
                            "${(controller.totalDistance / 1000).toPrecision(2)} KM",
                            style: const TextStyle(
                              fontFamily: "mon",
                              fontSize: 13,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total Fare-",
                          style: TextStyle(color: Colors.amber),
                        ),
                        Text(
                            "${((controller.totalDistance / 1000) * 25).toPrecision(2)}/- Rs",
                            style: const TextStyle(
                              fontFamily: "mon",
                              fontSize: 13,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ],
                ),
                sizedboxh7w0,
                Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Book Ride")))
              ],
            ),
          ),
        ),
      );
    });
  }
}
