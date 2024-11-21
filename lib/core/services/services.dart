import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    //start service
    sharedPreferences = await SharedPreferences.getInstance();
    // end service
    return this;
  }
}

//initialization MyServices
initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
