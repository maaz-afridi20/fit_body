import 'package:fit_body/Utils/constants/exports.dart';

class MealPlanD extends StatelessWidget {
  const MealPlanD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Breakfast plan for you',
              style: MTextStyles.mHeadingStyle(
                  fontWeight: FontWeight.w600, color: MColors.yellowishColor)),
          6.heightBox,
          Text(MTextString.loremIpsum,
              style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
          22.heightBox,
        ],
      ).wrapWithSingleChildScrollView().px32(),
    );
  }
}
