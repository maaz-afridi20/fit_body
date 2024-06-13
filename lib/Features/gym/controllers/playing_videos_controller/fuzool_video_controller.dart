// import 'package:fit_body/Utils/constants/exports.dart';

// class VideoController extends GetxController {
//   late CustomVideoPlayerController customVideoPlayerController;

//   @override
//   void onInit() {
//     super.onInit();
//     initializeVideoPlayer();
//   }

//   @override
//   void onClose() {
//     customVideoPlayerController.dispose();
//     super.onClose();
//   }

//   Future<void> initializeVideoPlayer() async {
//     VideoPlayerController videoPlayerController =
//         VideoPlayerController.networkUrl(Uri.parse(
//             "https://videos.pexels.com/video-files/4761426/4761426-sd_640_338_25fps.mp4"))
//           ..initialize().then((value) {
//             update();
//           });

//     customVideoPlayerController = CustomVideoPlayerController(
//         customVideoPlayerSettings: CustomVideoPlayerSettings(
//             pauseButton: const Icon(Icons.pause, color: Colors.white),
//             playButton: const Icon(Icons.play_arrow, color: Colors.white),
//             showSeekButtons: true,
//             exitFullscreenOnEnd: true,
//             placeholderWidget: Container(
//                 width: MHelperFunctions.screenWidth(),
//                 height: 250.h,
//                 color: Colors.black.withOpacity(0.5)),
//             showPlayButton: true),
//         context: Get.context!,
//         videoPlayerController: videoPlayerController);
//     await videoPlayerController.initialize();
//     update();
//   }
// }
