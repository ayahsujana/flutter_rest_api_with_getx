import 'package:get/get.dart';

import '../controller/detail_controller.dart';
import '../controller/home_controller.dart';

class MyClassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<DetailController>(() => DetailController());
  }
}
