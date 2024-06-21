import 'package:fit_body/Features/gym/screens/workout_row_screens/nutritions/widgets/mealplans_example_loading.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class MealPlanESeeRecipie extends StatelessWidget {
  const MealPlanESeeRecipie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Avacado And Egg Toast',
                style: MTextStyles.mHeadingStyle(
                    fontWeight: FontWeight.w600,
                    color: MColors.yellowishColor)),
            const Icon(Icons.star_rounded, color: Colors.white)
          ]).px32(),
          MHelperFunctions.mHeightBox(13),
          Row(children: [
            Text('15 Minutes', style: MTextStyles.mNormalStyle()),
            MHelperFunctions.mWidthBox(25),
            Text('150 KCal', style: MTextStyles.mNormalStyle())
          ]).px32(),
          MHelperFunctions.mHeightBox(25),
          ResizableContainer(widgets: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: getImageWidget(
                    "https://images.pexels.com/photos/2059151/pexels-photo-2059151.jpeg?auto=compress&cs=tinysrgb&w=600",
                    placeHolder: (_, __) => const GeneralShimmer(
                        height: 150, width: 250))).px32().py24()
          ]),
          MHelperFunctions.mHeightBox(28),
          Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ingredients',
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w600,
                        color: MColors.yellowishColor)),
                MHelperFunctions.mHeightBox(8),
                Text("Wholemeal bread",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Ripe Avacado Slices",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Fried or Poached Eggs",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(20),
                Text('Preperation',
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w600,
                        color: MColors.yellowishColor)),
                MHelperFunctions.mHeightBox(17),
                Text(MTextString.recipieDetails,
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(35),
                MCircularContainer(
                    titleText: "Save Recipie",
                    backgroundColor: MColors.yellowishColor,
                    heightOfContainer: 32.h,
                    widthOfContainer: 150.w,
                    onPress: () => MHelperFunctions.navigateTo(
                        context, const MealPlansExampleLoading())).centered()
              ]).px32(),
          MHelperFunctions.mHeightBox(20),
        ]).wrapWithSingleChildScrollView());
  }
}
