import 'package:fit_body/Utils/constants/exports.dart';

class BreakfastMealIdeasA extends StatelessWidget {
  const BreakfastMealIdeasA({super.key});

  @override
  Widget build(BuildContext context) {
    const uuid = Uuid();
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ResizableContainer(widgets: [
        const TrainingOfTheDayContainer(
                img:
                    "https://images.pexels.com/photos/3768001/pexels-photo-3768001.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                trainingName: "Spinach And Tomato Omellete",
                topRightTitle: "Recipie Of The Day",
                showNumberOfExercises: false)
            .px32()
            .py20()
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
                    "https://images.pexels.com/photos/5150125/pexels-photo-5150125.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                containerTitle: "Fruit Smoothie",
                // id: MHelperFunctions().generateUniqueStringId()
                id: uuid.v4(),
              ),
              MHelperFunctions.mWidthBox(9),
              WorkoutTimeContainer(
                  containerImage:
                      "https://images.pexels.com/photos/12049996/pexels-photo-12049996.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  containerTitle: "Green Celery Juice",
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
                mainTitle: "Delight With Greek Yougurt",
                subTitle: [Text('6 Minutes'), Text('200 Cal')],
                imageString:
                    "https://img.freepik.com/premium-photo/homemade-greek-yogurt-fresh-berries-delight_893571-10789.jpg"),
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
