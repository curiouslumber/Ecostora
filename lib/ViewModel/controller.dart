import 'dart:io';
import 'package:get/get.dart';

class Controller extends GetxController {
  var isAccount = false.obs;
  var registerPageFlow = 0.obs;
  var signedIn = false.obs;
  var isLoading = false.obs;

  // HomePage variables
  var fragmentIndex = 0.obs;

  // Check internet connection
  var activeConnection = false.obs;

  // Signed In User Data
  var email = "".obs;
  var name = "".obs;
  var photoUrl = "null".obs;

  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeConnection.value = true;
      }
    } on SocketException catch (_) {
      activeConnection.value = false;
    }
  }
}
