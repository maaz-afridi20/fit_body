import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/workout_andarticle_videos_data.dart';

class WorkoutVideos extends StatelessWidget {
  const WorkoutVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MHelperFunctions.mHeightBox(10),
      Text('Quick and easy workout videos',
          style: MTextStyles.mHeadingStyle(
              fontWeight: FontWeight.w500, color: MColors.yellowishColor)),
      MHelperFunctions.mHeightBox(10),
      Text('Discover fresh workouts : Elevate yout training',
          style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
      MHelperFunctions.mHeightBox(25),
      GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: workoutAndArticleVideosData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15.h, crossAxisSpacing: 9.w, crossAxisCount: 2),
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
          })
    ]).px32().wrapWithSingleChildScrollView());
  }
}
