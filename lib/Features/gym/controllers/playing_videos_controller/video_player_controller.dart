import 'package:chewie/chewie.dart';
import 'package:fit_body/Utils/constants/exports.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    initilizePlayer();
    super.onInit();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initilizePlayer() async {
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/butterfly.mp4");

    await Future.wait([videoPlayerController.initialize()]);

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: MColors.purpleColor.withOpacity(0.5),
        bufferedColor: Colors.lightGreenAccent,
        handleColor: Colors.cyanAccent,
        playedColor: Colors.redAccent,
      ),
      placeholder: Container(
        color: Colors.greenAccent,
      ),
    );
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