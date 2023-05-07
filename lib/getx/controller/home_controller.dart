import 'package:get/get.dart';
import 'package:tubewithgetx/model/latest_model.dart';
import 'package:tubewithgetx/repo/api_services.dart';

class HomeController extends GetxController with StateMixin<List<Videos>> {
  List video = <Videos>[].obs;

  void getHomeVideos() async {
    ApiServices().getHome().then((value) {
      video.addAll(value);
      change(value, status: RxStatus.success());
    }, onError: (e) {
      change(null, status: RxStatus.error(e.toString()));
    });
  }

  @override
  void onInit() {
    super.onInit();
    getHomeVideos();
  }
}
