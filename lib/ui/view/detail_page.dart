// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';
import 'package:tubewithgetx/getx/controller/detail_controller.dart';

import '../custom_view/image_view_detail.dart';

class DetailVideoPage extends GetView<DetailController> {
  const DetailVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailController>(() => DetailController());
    controller.getDetailVideos(Get.arguments['id']);
    controller.playVideoNow(Get.arguments['videoId']);
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        PodVideoPlayer(
          controller: controller.podController,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Expanded(
              child: controller.obx((state) => DetailPageView(states: state!))),
        )
      ]),
    ));
  }
}
