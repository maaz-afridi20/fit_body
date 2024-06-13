import 'package:fit_body/Utils/constants/exports.dart';

class CreateYourOwnBeginnerRoutine extends StatelessWidget {
  const CreateYourOwnBeginnerRoutine({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    final videoController = Get.put(MVideoPlayerController(videoUrl));
    return Scaffold(
        appBar: const MAppbar(appbarTitle: 'Begginer', showActionWidget: true),
        body: Column(children: [
          MPlayVerticalVideo(
              videoUrl: videoUrl, videoController: videoController),
          26.heightBox,
          //
          //
          //! exerciese names etc and details container...
          const ExerciseDetailsContainer(),
        ]));
  }
}
