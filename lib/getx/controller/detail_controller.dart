import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';
import 'package:tubewithgetx/model/detail_model.dart';
import 'package:tubewithgetx/repo/api_services.dart';

class DetailController extends GetxController
    with StateMixin<List<DetailModel>> {
  List detailModel = <DetailModel>[].obs;
  late PodPlayerController podController;
  late String id;

  void getDetailVideos(String id) async {
    ApiServices().getDetail(id).then((value) {
      detailModel.addAll(value);
      change(value, status: RxStatus.success());
    }, onError: (e) {
      change(null, status: RxStatus.error(e.toString()));
    });
  }

  playVideoNow(String videoId) async {
    podController = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube('https://youtu.be/$videoId'))
      ..initialise();
  }

  @override
  void onClose() {
    super.onClose();
    Get.delete<DetailController>();
    podController.dispose();
  }

  @override
  void refresh() {
    super.refresh();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
