import 'package:fit_body/Utils/constants/exports.dart';

class VideoWithExerciseDetailsContainer extends StatelessWidget {
  const VideoWithExerciseDetailsContainer(
      {super.key,
      required this.videoUrl,
      required this.appbarTitle,
      required this.exerciseInfo,
      required this.exerciseName});

  final String videoUrl;
  final String appbarTitle;
  final String exerciseName;
  final String exerciseInfo;

  @override
  Widget build(BuildContext context) {
    final videoController = Get.put(MVideoPlayerController(videoUrl));
    return Scaffold(
      appBar: MAppbar(appbarTitle: appbarTitle, showActionWidget: true),
      body: Column(
        children: [
          MPlayVerticalVideo(
              videoUrl: videoUrl, videoController: videoController),
          26.heightBox,
          ExerciseDetailsContainer(
            exerciseName: exerciseName,
            infoAboutExercise: exerciseInfo,
          ).px(35.w),
        ],
      ),
    );
  }
}
