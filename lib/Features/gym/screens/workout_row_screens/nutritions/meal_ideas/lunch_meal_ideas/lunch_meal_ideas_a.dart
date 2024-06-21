import '../../../../../../../Utils/constants/exports.dart';

class LunchMealIdeasA extends StatelessWidget {
  const LunchMealIdeasA({super.key});

  @override
  Widget build(BuildContext context) {
    const uuid = Uuid();
    return Column(mainAxisSize: MainAxisSize.min, children: [
      MHelperFunctions.mHeightBox(20),
      ResizableContainer(widgets: [
        TrainingOfTheDayContainer(
            img:
                "https://images.pexels.com/photos/725991/pexels-photo-725991.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            trainingName: "Salmon And Avacado Salad",
            topRightTitle: "Recipie Of The Day",
            showNumberOfExercises: false,
            onTapp: () => MHelperFunctions.navigateTo(
                context, const LunchMealIdeasB())).px32().py20()
      ]),
      MHelperFunctions.mHeightBox(20),
      Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended",
                style: MTextStyles.mHeadingStyle(
                    color: MColors.yellowishColor,
                    fontWeight: FontWeight.w500)),
            MHelperFunctions.mHeightBox(5),
            Row(children: [
              WorkoutTimeContainer(
                containerImage:
                    "https://www.healthygffamily.com/wp-content/uploads/2020/01/0DD3228A-4432-4DD4-BEFE-E5F405501066-scaled.jpg",
                containerTitle: "Quinoa Salad",
                // id: MHelperFunctions().generateUniqueStringId()
                id: uuid.v4(),
              ),
              MHelperFunctions.mWidthBox(9),
              WorkoutTimeContainer(
                  containerImage:
                      "https://images.pexels.com/photos/2175211/pexels-photo-2175211.jpeg",
                  containerTitle: "Buritto With Vegetables",
                  // id: MHelperFunctions().generateUniqueStringId()
                  id: uuid.v4())
            ]),
            MHelperFunctions.mHeightBox(9),
            Text("Recipies For You",
                style: MTextStyles.mHeadingStyle(
                    fontWeight: FontWeight.w400,
                    color: MColors.yellowishColor)),
            MHelperFunctions.mHeightBox(9),
            const FavouritesScreenContainer(
                mainTitle: "Teriyaki Chicken With Brown Rice",
                subTitle: [Text('46 Minutes'), Text('370 Cal')],
                imageString:
                    "https://images.pexels.com/photos/17593646/pexels-photo-17593646/free-photo-of-close-up-of-a-chicken-curry-katsu-dish.jpeg"),
            MHelperFunctions.mHeightBox(16),
            const FavouritesScreenContainer(
                mainTitle: "Baked Salmon",
                subTitle: [Text('30 Minutes'), Text('250 Cal')],
                imageString:
                    "https://images.pexels.com/photos/725991/pexels-photo-725991.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
          ]).px32()
    ]).wrapWithSingleChildScrollView();
  }
}
