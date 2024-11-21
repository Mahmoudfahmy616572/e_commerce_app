import 'package:e_commerce_app/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(Curd());
  }
}
