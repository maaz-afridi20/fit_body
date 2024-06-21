import 'package:fit_body/Utils/constants/exports.dart';

class BreakfastMealIdeasB extends StatelessWidget {
  const BreakfastMealIdeasB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Ideas"),
        body: Column(children: [
          Column(children: [
            Row(children: [
              MCircularContainer(
                      titleText: "BreakFast",
                      heightOfContainer: 32.h,
                      textcolor: MColors.balckColor,
                      backgroundColor: MColors.yellowishColor)
                  .wrapWithExpanded(),
              MHelperFunctions.mWidthBox(9),
              MCircularContainer(
                      titleText: "Lunch",
                      heightOfContainer: 32.h,
                      textcolor: MColors.darkPurpleColor)
                  .wrapWithExpanded(),
              MHelperFunctions.mWidthBox(9),
              MCircularContainer(
                      titleText: "Dinner",
                      heightOfContainer: 32.h,
                      textcolor: MColors.darkPurpleColor)
                  .wrapWithExpanded()
            ]),
            MHelperFunctions.mHeightBox(40),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                child: Text('Spinach And Tomato Omellete',
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w600,
                        color: MColors.yellowishColor)),
              ),
              MHelperFunctions.mWidthBox(25),
              const Icon(Icons.star_rounded, color: Colors.white)
            ]),
            MHelperFunctions.mHeightBox(13),
            Row(children: [
              Text('15 Minutes', style: MTextStyles.mNormalStyle()),
              MHelperFunctions.mWidthBox(25),
              Text('150 KCal', style: MTextStyles.mNormalStyle())
            ])
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
                Text("2-3 Eggs",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("A hanful of fresh spinach",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("1 small tomato",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Salt and pepper to taste",
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w200)),
                MHelperFunctions.mHeightBox(5),
                Text("Olive oil or butter",
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
