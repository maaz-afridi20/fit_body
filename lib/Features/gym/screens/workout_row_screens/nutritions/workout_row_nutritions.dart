import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutNutritionsScreen extends StatelessWidget {
  const WorkoutNutritionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
        appBar: MAppbar(
            appbarTitle: 'Nutritions',
            showActionWidget: true,
            showLeadingWidget: true,
            leadingWidget: GestureDetector(
                onTap: () {
                  workoutRowwController.updateIndex(0);
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: MColors.yellowishColor))),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                Expanded(
                    child: MCircularContainer(
                        titleText: "Meal Plans",
                        heightOfContainer: 32.h,
                        textcolor: MColors.balckColor,
                        backgroundColor: MColors.yellowishColor)),
                9.widthBox,
                Expanded(
                    child: MCircularContainer(
                        titleText: "Meal Ideas",
                        heightOfContainer: 32.h,
                        textcolor: MColors.darkPurpleColor))
              ]).px32(),
              23.heightBox,
              ResizableContainer(widgets: [
                const TrainingOfTheDayContainer(
                        img:
                            "https://www.avogel.ca/img3/700x500/8-reasons-why-you-should-drink-carrot-juice.jpg?m=1570031805",
                        trainingName: "Carrot And Orange Smoothie",
                        topRightTitle: "Recipie Of The Day",
                        showNumberOfExercises: false)
                    .px(35.w)
                    .py(22.h)
              ]),
              20.heightBox,
              "Recommended"
                  .text
                  .size(20.sp)
                  .medium
                  .color(MColors.yellowishColor)
                  .make()
                  .px32(),
              9.heightBox,
              Row(children: [
                const WorkoutTimeContainer(
                    containerImage:
                        "https://images.pexels.com/photos/775032/pexels-photo-775032.jpeg?auto=compress&cs=tinysrgb&w=600",
                    containerTitle: "Fruit Smoothie",
                    id: "nutrition1"),
                9.widthBox,
                const WorkoutTimeContainer(
                    containerImage:
                        "https://images.pexels.com/photos/1213710/pexels-photo-1213710.jpeg?auto=compress&cs=tinysrgb&w=600",
                    containerTitle: "Salads With Quinoa",
                    id: "nutrition2")
              ]).px(35.w),
              9.heightBox,
              "Recipies For You"
                  .text
                  .size(20.sp)
                  .medium
                  .color(MColors.yellowishColor)
                  .make()
                  .px32(),
              9.heightBox,
              const FavouritesScreenContainer(
                      mainTitle: "Delight With Greek Yougurt",
                      subTitle: [Text('6 Minutes'), Text('200 Cal')],
                      imageString:
                          "https://img.freepik.com/premium-photo/homemade-greek-yogurt-fresh-berries-delight_893571-10789.jpg")
                  .px32(),
              16.heightBox,
              const FavouritesScreenContainer(
                      mainTitle: "Baked Salmon",
                      subTitle: [Text('30 Minutes'), Text('250 Cal')],
                      imageString:
                          "https://images.pexels.com/photos/725991/pexels-photo-725991.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
                  .px32()
            ]).wrapWithSingleChildScrollView());
  }
}
