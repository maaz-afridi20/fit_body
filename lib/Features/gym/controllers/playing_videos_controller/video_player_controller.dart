import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class VideoController extends GetxController {
  late CustomVideoPlayerController customVideoPlayerController;

  @override
  void onInit() {
    super.onInit();
    initializeVideoPlayer();
  }

  @override
  void onClose() {
    customVideoPlayerController.dispose();
    super.onClose();
  }

  Future<void> initializeVideoPlayer() async {
    VideoPlayerController videoPlayerController;

    videoPlayerController =
        VideoPlayerController.asset("assets/videos/butterfly.mp4")
          ..initialize().then((value) {
            update();
          });

    customVideoPlayerController = CustomVideoPlayerController(
        context: Get.context!, videoPlayerController: videoPlayerController);
    await videoPlayerController.initialize();
    update();
  }
}








//  late VideoPlayerController mVideoPlayerController;
//   var isPlaying = false.obs;
//   var isInitialized = false.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     mVideoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
//       ..initialize().then((_) {
//         isInitialized.value = true;
//         update();
//       });
//   }

//   void togglePlayPause() {
//     if (mVideoPlayerController.value.isPlaying) {
//       mVideoPlayerController.pause();
//     } else {
//       mVideoPlayerController.play();
//     }
//     isPlaying.value = mVideoPlayerController.value.isPlaying;
//   }

//   @override
//   void onClose() {
//     mVideoPlayerController.dispose();
//     super.onClose();
//   }







//! 2ndd...

  // Future<void> initilizePlayer() async {
  //   videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
  //       "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"));

  //   await Future.wait([videoPlayerController.initialize()]);

  //   chewieController = ChewieController(
  //     videoPlayerController: videoPlayerController,
  //     autoPlay: true,
  //     looping: true,
  //     autoInitialize: true,
  //     materialProgressColors: ChewieProgressColors(
  //       backgroundColor: MColors.purpleColor.withOpacity(0.5),
  //       bufferedColor: Colors.lightGreenAccent,
  //       handleColor: Colors.cyanAccent,
  //       playedColor: Colors.redAccent,
  //     ),
  //     placeholder: Container(
  //       color: Colors.greenAccent,
  //     ),
  //   );
  //   update();
  // }