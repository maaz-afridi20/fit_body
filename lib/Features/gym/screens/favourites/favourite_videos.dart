import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class FavouriteVideos extends StatefulWidget {
  const FavouriteVideos({super.key});

  @override
  State<FavouriteVideos> createState() => _FavouriteVideosState();
}

class _FavouriteVideosState extends State<FavouriteVideos> {
  late CustomVideoPlayerController customVideoPlayerController;

  @override
  void initState() {
    initializeVideoPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomVideoPlayer(
                customVideoPlayerController: customVideoPlayerController),
          ),
        ],
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController videoPlayerController;
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/butterfly.mp4")
          ..initialize().then((value) {
            setState(() {});
          });

    customVideoPlayerController = CustomVideoPlayerController(
        customVideoPlayerSettings: CustomVideoPlayerSettings(
            pauseButton: const Icon(Icons.pause, color: Colors.white),
            playButton: const Icon(Icons.play_arrow, color: Colors.white),
            showSeekButtons: true,
            exitFullscreenOnEnd: true,
            placeholderWidget: Container(
              width: MHelperFunctions.screenWidth(),
              height: 250.h,
              color: Colors.black.withOpacity(0.5),
            ),
            showPlayButton: true),
        context: context,
        videoPlayerController: videoPlayerController);
  }
}









// class FavouriteVideos extends StatelessWidget {
//   const FavouriteVideos({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(VideoController());
//     return Scaffold(
//         appBar: AppBar(title: const Text('videos')),
//         body: Column(
//           children: <Widget>[
//             FutureBuilder(
//               future: controller.initializeVideoPlayer(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return CircularProgressIndicator();
//                 } else if (snapshot.hasError) {
//                   return const Text('Error loading');
//                 } else {
//                   return CustomVideoPlayer(
//                       customVideoPlayerController:
//                           controller.customVideoPlayerController);
//                 }
//               },
//             )
//           ],
//         ));
//   }
// }
