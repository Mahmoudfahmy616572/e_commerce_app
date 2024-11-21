import 'package:get/get.dart';

validVlues(String type, min, max, String val) {
  if (type == "firstName") {
    if (!GetUtils.isUsername(val)) {
      return 'valid 1'.tr;
    }
  }
  if (type == "LastName") {
    if (!GetUtils.isUsername(val)) {
      return 'valid 1'.tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return 'valid 2'.tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'valid 3'.tr;
    }
  }
  if (val.length < min) {
    return 'valid 4'.tr.tr + min.toString();
  }
  if (val.length > max) {
    return 'valid 5'.tr + max.toString();
  }
  if (val.isEmpty) {
    return 'valid 6'.tr;
  }
}
