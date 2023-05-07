import 'package:get/get.dart';
import 'package:tubewithgetx/route/app_route.dart';
import 'package:tubewithgetx/ui/view/detail_page.dart';
import 'package:tubewithgetx/ui/view/latest_page.dart';
import '../getx/binding/v_binding.dart';

class AppPage {
  static const INITIAL = AppRoute.HOME;

  static final routes = [
    GetPage(
        name: AppRoute.HOME,
        page: () => const HomeVideosPage(),
        binding: MyClassBinding()),
    GetPage(
        name: AppRoute.DETAIL,
        page: () => const DetailVideoPage(),
        binding: MyClassBinding())
  ];
}

// class MyClassBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<HomeController>(() => HomeController());
//     Get.lazyPut<DetailController>(() => DetailController());
//   }
// }
