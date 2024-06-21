import '../../../../../../../Utils/constants/exports.dart';

class DinnerMealIdeasA extends StatelessWidget {
  const DinnerMealIdeasA({super.key});

  @override
  Widget build(BuildContext context) {
    const uuid = Uuid();
    return Column(mainAxisSize: MainAxisSize.min, children: [
      MHelperFunctions.mHeightBox(20),
      ResizableContainer(widgets: [
        TrainingOfTheDayContainer(
            img:
                "https://images.pexels.com/photos/33406/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            trainingName: "Grilled Chicken Salad",
            topRightTitle: "Recipie Of The Day",
            showNumberOfExercises: false,
            onTapp: () => MHelperFunctions.navigateTo(
                context, const DinnerMealIdeasB())).px32().py20()
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
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7FQicmxC2k9Afbi9dFgh8LlJ7EVtEuWsEZA&s",
                containerTitle: "Chickpea Salad",
                // id: MHelperFunctions().generateUniqueStringId()
                id: uuid.v4(),
              ),
              MHelperFunctions.mWidthBox(9),
              WorkoutTimeContainer(
                  containerImage:
                      "https://images.pexels.com/photos/724667/pexels-photo-724667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  containerTitle: "Lentil Soup",
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
                mainTitle: "Turkey And Avacado Wrap",
                subTitle: [Text('46 Minutes'), Text('370 Cal')],
                imageString:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6x0ougrSvJKHzz329mEk9raRbwWd91IZSeg&s"),
            MHelperFunctions.mHeightBox(16),
            const FavouritesScreenContainer(
                mainTitle: "Chicken Breast Stuffed With Spinach",
                subTitle: [Text('30 Minutes'), Text('250 Cal')],
                imageString:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuYeRKksliiRM3QqU793YASGbclyXepNxppw&s")
          ]).px32()
    ]).wrapWithSingleChildScrollView();
  }
}
