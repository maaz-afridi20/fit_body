import 'package:fit_body/Utils/constants/exports.dart';

class MPlayVerticalVideo extends StatelessWidget {
  const MPlayVerticalVideo({
    super.key,
    required this.videoUrl,
    required this.videoController,
  });

  final String videoUrl;
  final MVideoPlayerController videoController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MVideoPlayerController>(
        init: MVideoPlayerController(videoUrl),
        builder: (controller) {
          return controller.customVideoPlayerController.videoPlayerController
                  .value.isInitialized
              ? ResizableContainer(widgets: [
                  SizedBox(
                          height: 460.h,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: CustomVideoPlayer(
                                  customVideoPlayerController: videoController
                                      .customVideoPlayerController)))
                      .py(23.h)
                ])
              : const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [GeneralShimmer(height: 460, width: 300)]);
        });
  }
}
