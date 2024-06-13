import 'package:fit_body/Utils/constants/exports.dart';

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
        customVideoPlayerSettings: const CustomVideoPlayerSettings(
            customAspectRatio: 9 / 16,
            pauseButton: Icon(Icons.pause, color: Colors.white),
            playButton: Icon(Icons.play_arrow, color: Colors.white),
            showSeekButtons: true,
            exitFullscreenOnEnd: true,
            placeholderWidget: Center(child: CircularProgressIndicator()),
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


    // VideoPlayerController videoPlayerController =
    //     VideoPlayerController.networkUrl(Uri.parse(
    //         "https://videos.pexels.com/video-files/4761426/4761426-sd_640_338_25fps.mp4"))
    //       ..initialize().then((value) {
    //         update();
    //       });
    //
    //
    // VideoPlayerController videoPlayerController =
    //     VideoPlayerController.asset('assets/videos/butterfly.mp4')
    //       ..initialize().then((value) {
    //         update();
    //       });
