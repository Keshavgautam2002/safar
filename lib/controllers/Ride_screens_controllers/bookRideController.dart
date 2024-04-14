import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:safar_project/helper/Services/Services.dart';

class BookRideController extends GetxController {
  Set<Marker> markerSet = {};
  CameraPosition? cameraPosition;
  GoogleMapController? mapController;
  List<Placemark> placemarks = [];
  String locationAddress = "";
  double totalDistance = 0.0;
  bool isDetailsVisible = false;
  LatLng? currentLocation;
  bool isLocationFetching = false;

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Future<void> fetchCurrentLocation() async {
    isLocationFetching = true;
    update();
    LatLng? location = await Services.fetchCurrentLocation();
    currentLocation = location;
    if (location != null) {
      cameraPosition = CameraPosition(target: location);
      CameraUpdate cameraUpdate = CameraUpdate.newLatLngZoom(location, 15);
      if (mapController != null) {
        await mapController?.animateCamera(cameraUpdate);
      }
      update();
    }
    isLocationFetching = false;
    update();
  }

  void setMarkerToLocation(LatLng location) async {
    await getLandmarkFromCoordinates(location.latitude, location.longitude);
    if (currentLocation != null) {
      totalDistance = Services.fetchDistance(currentLocation!, location);
    }
    markerSet.add(Marker(
        markerId: const MarkerId("Destination"),
        position: location,
        draggable: true,
        infoWindow: InfoWindow(
          title: "Destination",
          onTap: () {},
        )));
    update();
  }

  Future<void> getLandmarkFromCoordinates(
      double latitude, double longitude) async {
    placemarks.clear();
    placemarks =
        await Services.fetchLocationDetailsFromCoordinates(latitude, longitude);
    if (placemarks.isNotEmpty) {
      locationAddress =
          "${placemarks[0].street ?? ""},${placemarks[0].subAdministrativeArea ?? ""},${placemarks[0].administrativeArea ?? ""},${placemarks[0].postalCode ?? ""}";
    }
    isDetailsVisible = true;
    update();
  }

  @override
  void onInit() {
    fetchCurrentLocation();
    super.onInit();
  }
}
