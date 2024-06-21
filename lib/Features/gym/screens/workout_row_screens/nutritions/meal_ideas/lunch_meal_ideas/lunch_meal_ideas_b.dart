import 'package:fit_body/Utils/constants/exports.dart';

class LunchMealIdeasB extends StatelessWidget {
  const LunchMealIdeasB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Ideas"),
        body: Column(children: [
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                  child: Text('Teriyaki Chicken With Brown Rice',
                      style: MTextStyles.mHeadingStyle(
                          fontWeight: FontWeight.w600,
                          color: MColors.yellowishColor))),
              MHelperFunctions.mWidthBox(25),
              const Icon(Icons.star_rounded, color: Colors.white)
            ]),
            MHelperFunctions.mHeightBox(13),
            Row(children: [
              Text('45 Minutes', style: MTextStyles.mNormalStyle()),
              MHelperFunctions.mWidthBox(25),
              Text('375 KCal', style: MTextStyles.mNormalStyle())
            ])
          ]).px32(),
          MHelperFunctions.mHeightBox(25),
          ResizableContainer(widgets: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: getImageWidget(
                    "https://images.pexels.com/photos/17593646/pexels-photo-17593646/free-photo-of-close-up-of-a-chicken-curry-katsu-dish.jpeg",
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
                Text("Chicken Breast",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Teriyaki Sauce",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Brown Rice",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Salt and pepper to taste",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Fresh broccoli",
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
