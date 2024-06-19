import 'package:fit_body/Utils/constants/exports.dart';

class MealPlanC extends StatelessWidget {
  const MealPlanC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
      body: Column(
        children: [
          ...buildQuestionsOfMealPlanC(mealPlanCQuestions),
          25.heightBox,
          MCircularContainer(
            titleText: "Create",
            heightOfContainer: 32.h,
            widthOfContainer: 160.w,
            backgroundColor: MColors.yellowishColor,
            onPress: () => Get.to(() => const MealPlanD()),
          ),
          20.heightBox,
        ],
      ).wrapWithSingleChildScrollView().px32(),
    );
  }
}
