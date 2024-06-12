import 'package:fit_body/Utils/constants/exports.dart';

class CreateYourOwnBeginnerRoutine extends StatelessWidget {
  const CreateYourOwnBeginnerRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    final videoController = Get.put(GeneralVideoPlayerController());
    return Scaffold(
        appBar: const MAppbar(appbarTitle: 'Begginer', showActionWidget: true),
        body: Column(
          children: [
            GetBuilder<GeneralVideoPlayerController>(
                init: GeneralVideoPlayerController(),
                builder: (controller) {
                  return controller.customVideoPlayerController
                          .videoPlayerController.value.isInitialized
                      ? Center(
                          child: CustomVideoPlayer(
                              customVideoPlayerController:
                                  videoController.customVideoPlayerController))
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [GeneralShimmer()]);
                })
          ],
        ));
  }
}

// ResizableContainer(widgets: [
//   Container(height: 450.h,width: 320,
//   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
//   child: const Text('text'),
//   ),
// ]),

// GetBuilder<GeneralVideoPlayerController>(
//     init: GeneralVideoPlayerController(),
//     builder: (controller) => Expanded(
//             child: Center(
//           child: controller.chewieController != null &&
//                   controller.chewieController!.videoPlayerController
//                       .value.isInitialized
//               ? Chewie(controller: controller.chewieController!)
              // : const Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       CircularProgressIndicator(),
              //       SizedBox(height: 10)
              //     ],
              //   ),
//         )))
