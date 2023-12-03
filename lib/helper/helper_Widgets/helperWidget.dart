import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HelperWidget {
  static errorSnack(String title, String? message, {bool mounted = true}) {
    if (mounted) {
      return Get.snackbar(
        title,
        message ?? '',
        forwardAnimationCurve: Curves.fastOutSlowIn,
        reverseAnimationCurve: Curves.fastOutSlowIn,
        duration: const Duration(seconds: 2),
      );
    }
  }

  static Future fetchLocation() async {
    LocationPermission locationPermission;
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      locationPermission = await Geolocator.checkPermission();
      if (!serviceEnabled) {
        return;
      }
    }

    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission != LocationPermission.whileInUse) {
        return;
      }
    }
    var position = await Geolocator.getCurrentPosition();
    print('--------------------------------------------------');
    print('${position.latitude}, ${position.longitude}');
    print('--------------------------------------------------');
    return position;
  }
}
