import 'package:fit_body/Utils/constants/exports.dart';

class MealPlanD extends StatelessWidget {
  const MealPlanD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
        body: Column(children: [
          Text('Breakfast plan for you',
              style: MTextStyles.mHeadingStyle(
                  fontWeight: FontWeight.w600, color: MColors.yellowishColor)),
          6.heightBox,
          Text(MTextString.loremIpsum,
              style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
          22.heightBox,
          //
          //! showign data with radio btn
          ...buildQuestionForBreakfastPlan(breakfastPlanData),
          //
          30.heightBox,
          MCircularContainer(
              titleText: "See Recipie",
              backgroundColor: MColors.yellowishColor,
              heightOfContainer: 32.h,
              widthOfContainer: 150.w,
              onPress: () => Get.to(() => const MealPlanESeeRecipie())),
          20.heightBox
        ]).wrapWithSingleChildScrollView().px32());
  }
}
