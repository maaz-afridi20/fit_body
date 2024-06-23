import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/workout_andarticle_videos_data.dart';

class WorkoutVideos extends StatelessWidget {
  const WorkoutVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 9.w,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final exercise = workoutAndArticleVideosData[index];
              return WorkoutTimeContainer(
                containerImage: exercise.imgUrl,
                containerTitle: exercise.mainTitle,
                onVideoIconTapped: () => Get.to(() =>
                    VideoWithExerciseDetailsContainer(
                        videoUrl: exercise.videoUrl,
                        appbarTitle: "Resources",
                        exerciseInfo: exercise.exerciseInfo,
                        exerciseName: exercise.mainTitle)),
                id: MHelperFunctions().generateUniqueStringId(),
              );
            }).px32());
  }
}
