import 'package:chewie/chewie.dart';
import 'package:fit_body/Features/gym/controllers/playing_videos_controller/video_player_controller.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class FavouriteVideos extends StatelessWidget {
  const FavouriteVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('videos')),
        body: Column(
          children: [
            GetBuilder<VideoController>(
              init: VideoController(),
              builder: (controller) => Expanded(
                  child: Center(
                child: controller.chewieController != null &&
                        controller.chewieController!.videoPlayerController.value
                            .isInitialized
                    ? Chewie(controller: controller.chewieController!)
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              )),
            )
          ],
        ));
  }
}


// Obx(() {
            
//           }),


  //  if (controller.mVideoPlayerController.value.isInitialized) {
  //                 return Column(
  //                   children: [
  //                     AspectRatio(
  //                         aspectRatio: controller
  //                             .mVideoPlayerController.value.aspectRatio,
  //                         child:
  //                             VideoPlayer(controller.mVideoPlayerController)),
  //                     const SizedBox(height: 20),
  //                     FloatingActionButton(
  //                       onPressed: controller.togglePlayPause,
  //                       child: Icon(
  //                         controller.isPlaying.value
  //                             ? Icons.pause
  //                             : Icons.play_arrow,
  //                       ),
  //                     ),
  //                   ],
  //                 );
  //               } else {
  //                 return const Center(child: Text('Error'));
  //               }