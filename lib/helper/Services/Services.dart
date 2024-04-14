import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Services {
  static Future<LatLng?> fetchCurrentLocation() async {
    bool isServiceEnbled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnbled) {
      Get.snackbar("Message", "Please Turn on GPS");
    } else {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Get.snackbar("Message", "Permission Denied");
          return null;
        }
      }
      if (permission == LocationPermission.deniedForever) {
        Get.snackbar("Message", "Permission Denied");
        return null;
      }
      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Position pos = await Geolocator.getCurrentPosition();
        return LatLng(pos.latitude, pos.longitude);
      }
    }
    return null;
  }

  static Future<dynamic> fetchLocationDetailsFromCoordinates(
      double latitude, double longitude) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    return placemarks;
  }

  static double fetchDistance(LatLng start, LatLng end) {
    return Geolocator.distanceBetween(
        start.latitude, start.longitude, end.latitude, end.longitude);
  }
}
