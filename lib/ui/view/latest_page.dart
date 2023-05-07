import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubewithgetx/getx/controller/home_controller.dart';

import '../custom_view/image_view_video.dart';

class HomeVideosPage extends GetView<HomeController> {
  const HomeVideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funny Kids Videos'),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: controller.obx((state) => ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var stt = state![index];
              return ImageVideoRow(
                  id: stt.id,
                  videoId: stt.videoId,
                  title: stt.videoTitle,
                  category: stt.categoryName,
                  watched: stt.totelViewer);
            },
            itemCount: state?.length,
          )),
    );
  }
}

// class LatestVideosPage extends StatefulWidget {
//   const LatestVideosPage({super.key});

//   @override
//   State<LatestVideosPage> createState() => _LatestVideosPageState();
// }

// class _LatestVideosPageState extends State<LatestVideosPage> {
//   @override
//   void initState() {
//     context.read<LatestCubit>().getlatestVideos();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Funny Kids Videos'),
//         leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
//         actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
//       ),
//       body: BlocBuilder<LatestCubit, LatestState>(builder: ((context, state) {
//         if (state is LatestLoading) {
//           return loadingWidget(context);
//         }
//         if (state is LatestError) {
//           return Center(
//             child: Text(state.message),
//           );
//         }
//         if (state is LatestLoaded) {
//           return AnimatedContent(
//             show: state.latest.isNotEmpty,
//             child: ListView.builder(
//                 itemCount: state.latest.length,
//                 itemBuilder: (context, index) {
//                   var latest = state.latest[index];
//                   return ImageVideoRow(
//                       id: latest.id,
//                       videoId: latest.videoId,
//                       title: latest.videoTitle,
//                       category: latest.categoryName,
//                       watched: latest.totelViewer);
//                 }),
//           );
//         }
//         return const Center(child: Text('No fount data'));
//       })),
//     );
//   }
// }
