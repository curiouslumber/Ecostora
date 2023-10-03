import 'package:ecostore/Views/Account/signin.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var isAccount = false.obs;
  var signInPage = SignIn().obs;
  var registerPageFlow = 0.obs;
}
