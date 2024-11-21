import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

import '../../core/constants/app_route.dart';

abstract class OtpController extends GetxController {
  checkCode();
  goToResetPassword();
  goToSuccessSignUp();
}

class OtpControllerImpl extends OtpController {
  late OtpFieldController codeVerfy;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offAllNamed(AppRouteName.resetPassword);
  }

  @override
  goToSuccessSignUp() {
    Get.offAllNamed(AppRouteName.successSignUp);
  }

  @override
  void onInit() {
    codeVerfy = OtpFieldController();
    super.onInit();
  }
}
