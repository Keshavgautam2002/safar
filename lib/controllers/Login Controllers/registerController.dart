import 'package:get/get.dart';

class RegisterController extends GetxController {
  List<String> docTypes = [
    "Aadhar Card",
    "PAN Card",
    "Voter-Id Card",
    "Driving Licance"
  ];

  List<String> vehicleType = ["Two Wheeler", "Four Wheeler"];

  String docTypeChoosed = "";
  RxInt index = 0.obs;
  bool isUserRegisterDone = false;
  bool isVehicleRegisterDone = false;

  updateIndex() {
    index.value += 1;
    update();
  }

  updaetUserBool(bool res) {
    isUserRegisterDone = res;
    update();
  }

  updaetVehicleBool(bool res) {
    isVehicleRegisterDone = res;
    update();
  }
}
