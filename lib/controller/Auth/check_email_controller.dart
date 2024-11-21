import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  useEmailText();
  gotoSuccessResetPassword();
}

class CheckEmailControllerimp extends CheckEmailController {
  final user = FirebaseAuth.instance.currentUser;

  @override
  gotoSuccessResetPassword() {
    Get.offAllNamed(AppRouteName.successResetPassword);
    update();
  }

  @override
  useEmailText() {
    if (user != null) {
      // Name, email address, and profile photo URL

      // Check if user's email is verified

      // The user's ID, unique to the Firebase project. Do NOT use this value to
      // authenticate with your backend server, if you have one. Use
      // User.getIdToken() instead.
    }
    update();
  }
}
