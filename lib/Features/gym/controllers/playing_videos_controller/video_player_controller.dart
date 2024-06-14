import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class MVideoPlayerController extends GetxController {
  late CustomVideoPlayerController customVideoPlayerController;
  final String videoUrl;
  MVideoPlayerController(this.videoUrl);

  Future<void> initializeVideoPlayer() async {
    VideoPlayerController videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl))
          ..initialize().then((value) {
            update();
          });

    customVideoPlayerController = CustomVideoPlayerController(
        customVideoPlayerSettings: CustomVideoPlayerSettings(
            alwaysShowThumbnailOnVideoPaused: true,
            settingsButton: const Icon(Iconsax.setting_2, color: Colors.white),
            customAspectRatio: 9 / 16,
            playButton: Center(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff896cfe), shape: BoxShape.circle),
                    child: const Icon(CupertinoIcons.play_fill,
                        color: Colors.white, size: 30))),
            pauseButton: Center(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff896cfe), shape: BoxShape.circle),
                    child: const Icon(Iconsax.pause,
                        color: Colors.white, size: 30))),
            showSeekButtons: true,
            exitFullscreenOnEnd: true,
            placeholderWidget: const Center(child: CircularProgressIndicator()),
            showPlayButton: true),
        context: Get.context!,
        videoPlayerController: videoPlayerController);
    await videoPlayerController.initialize();
    update();
  }

  @override
  void onInit() {
    initializeVideoPlayer();
    super.onInit();
  }

  @override
  void onClose() {
    customVideoPlayerController.dispose();
    super.onClose();
  }
}
