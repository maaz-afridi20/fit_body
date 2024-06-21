import '../../../../../../../Utils/constants/exports.dart';

class DinnerMealIdeasB extends StatelessWidget {
  const DinnerMealIdeasB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Ideas"),
        body: Column(children: [
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                  child: Text('Chicken Breas Stuffed With Spinach',
                      style: MTextStyles.mHeadingStyle(
                          fontWeight: FontWeight.w600,
                          color: MColors.yellowishColor))),
              MHelperFunctions.mWidthBox(25),
              const Icon(Icons.star_rounded, color: Colors.white)
            ]),
            MHelperFunctions.mHeightBox(13),
            Row(children: [
              Text('30 Minutes', style: MTextStyles.mNormalStyle()),
              MHelperFunctions.mWidthBox(25),
              Text('275 KCal', style: MTextStyles.mNormalStyle())
            ])
          ]).px32(),
          MHelperFunctions.mHeightBox(25),
          ResizableContainer(widgets: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: getImageWidget(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuYeRKksliiRM3QqU793YASGbclyXepNxppw&s",
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
                Text("1 bonelessm skinless chicken breast (150g)",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("1 cup fresh spinach",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("30g crumbled feta cheese",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Lemon juice garlic powder, salt and pepper",
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
                        widthOfContainer: 150.w)
                    .centered()
              ]).px32()
        ]).wrapWithSingleChildScrollView());
  }
}
