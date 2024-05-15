import 'package:fit_body/AppComons/widgets/home/workout_time_container.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => MHelperFunctions.showAppExitDialogue(context),
      child: Scaffold(
        backgroundColor: MColors.balckColor,
        appBar: const HomeScreenAppbar(),
        body: Column(
          children: [
            //
            //! workout row..
            MHelperFunctions.giveHeight(12.h),
            const WorkOutRow(),

            //
            //! recommendation row...
            MHelperFunctions.giveHeight(5.h),
            const RecommendationRow(),
            MHelperFunctions.giveHeight(6.h),
            //
            //! image row...
           const WorkoutTimeContainer(),
            MHelperFunctions.giveWidth(10.w),
           const WorkoutTimeContainer(),
          ],
        ),
      ),
    );
  }
}
