import 'package:fit_body/Utils/constants/exports.dart';

class MealPlansB extends StatelessWidget {
  const MealPlansB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
      body: Column(
        children: [
          //
          //! building all radio btns with titles
          ...buildQuestionsOfMealPlanB(mealPlanBQuestions),
          25.heightBox,
          MCircularContainer(
              titleText: "Next",
              heightOfContainer: 32.h,
              widthOfContainer: 160.w,
              backgroundColor: MColors.yellowishColor,
              onPress: () => Get.to(() => const MealPlanC())),
          20.heightBox,
        ],
      ).wrapWithSingleChildScrollView().px32(),
    );
  }
}
