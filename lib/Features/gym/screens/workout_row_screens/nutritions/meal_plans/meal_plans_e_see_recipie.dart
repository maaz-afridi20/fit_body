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
            getImageWidget(
                    "https://images.pexels.com/photos/2059151/pexels-photo-2059151.jpeg?auto=compress&cs=tinysrgb&w=600")
                .px32()
                .py(22.h)
          ])
        ]));
  }
}
