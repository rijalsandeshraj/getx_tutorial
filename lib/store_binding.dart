import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/store_controller.dart';

class StoreBinding implements Bindings {
  // default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
