import '../../../../../Utils/constants/exports.dart';

class FavouritesScreenContainerList extends StatelessWidget {
  const FavouritesScreenContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FavouritesScreenContainer(
          mainTitle: "Upper Body",
          imageString:
              "https://images.pexels.com/photos/3820296/pexels-photo-3820296.jpeg?auto=compress&cs=tinysrgb&w=600",
          subTitle: [
            Row(mainAxisSize: MainAxisSize.min, children: [
              const Icon(Icons.timer, size: 20),
              MHelperFunctions.mWidthBox(5),
              const Text('60 Minutes', overflow: TextOverflow.ellipsis)
            ]).wrapWithSingleChildScrollView(scrollDirection: Axis.horizontal),
            Row(mainAxisSize: MainAxisSize.min, children: [
              const Icon(Icons.fire_extinguisher, size: 20),
              MHelperFunctions.mWidthBox(5),
              const Text('1320 kCal', overflow: TextOverflow.ellipsis)
            ]).wrapWithSingleChildScrollView(scrollDirection: Axis.horizontal),
            Row(mainAxisSize: MainAxisSize.min, children: [
              const Icon(Icons.directions_run_rounded, size: 20),
              MHelperFunctions.mWidthBox(5),
              const Text('5 Excercises', overflow: TextOverflow.ellipsis)
            ]).wrapWithSingleChildScrollView(scrollDirection: Axis.horizontal),
            MHelperFunctions.mHeightBox(30)
          ]),
      //
      //!
      MHelperFunctions.mHeightBox(20),
      FavouritesScreenContainer(
          mainTitle: "Boost Energy And Vitality",
          imageString:
              "https://images.pexels.com/photos/3768913/pexels-photo-3768913.jpeg?auto=compress&cs=tinysrgb&w=600",
          subTitle: [Text(MTextString.incorporating)]),

      //
      //!
      MHelperFunctions.mHeightBox(20),
      FavouritesScreenContainer(
          mainTitle: "Lower Blast Body",
          imageString:
              "https://images.pexels.com/photos/5310890/pexels-photo-5310890.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          subTitle: [Text(MTextString.incorporating)]),

      //
      //!
      MHelperFunctions.mHeightBox(20),
      FavouritesScreenContainer(
          mainTitle: "Pull Out",
          imageString:
              "https://images.pexels.com/photos/4793200/pexels-photo-4793200.jpeg?auto=compress&cs=tinysrgb&w=600",
          subTitle: [
            Text(MTextString.incorporating),
          ]),
      //
      //!
      MHelperFunctions.mHeightBox(20),
      FavouritesScreenContainer(
          mainTitle: "Avacado And Egg Toast",
          imageString:
              "https://cdn.pixabay.com/photo/2020/06/23/15/17/avocado-5332878_1280.jpg",
          subTitle: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.directions_run_rounded, size: 20),
                  MHelperFunctions.mWidthBox(5),
                  const Text('150 KCal', overflow: TextOverflow.ellipsis)
                ])
          ])
    ]);
  }
}
