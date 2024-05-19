import '../../../../Utils/constants/exports.dart';

class FavouritesScreenContainerList extends StatelessWidget {
  const FavouritesScreenContainerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FavouritesScreenContainer(
          mainTitle: "Upper Body",
          imageString: MImageStrings.uppperbody,
          subTitle: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.timer, size: 20),
                MHelperFunctions.giveWidth(5.w),
                const Text('60 Minutes', overflow: TextOverflow.ellipsis)
              ]),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.fire_extinguisher, size: 20),
                  MHelperFunctions.giveWidth(5.w),
                  const Text('1320 kCal', overflow: TextOverflow.ellipsis)
                ])),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.directions_run_rounded, size: 20),
                  MHelperFunctions.giveWidth(5.w),
                  const Text('5 Excercises', overflow: TextOverflow.ellipsis)
                ])),
            MHelperFunctions.giveHeight(30.h),
          ],
        ),
        //
        //!
        MHelperFunctions.giveHeight(20.h),
        FavouritesScreenContainer(
            mainTitle: "Boost Energy And Vitality",
            imageString: MImageStrings.singlefemale,
            subTitle: [
              Text(MTextString.incorporating),
            ]),

        //
        //!
        MHelperFunctions.giveHeight(20.h),
        FavouritesScreenContainer(
            mainTitle: "Lower Blast Body",
            imageString: MImageStrings.lowerbody,
            subTitle: [
              Text(MTextString.incorporating),
            ]),

        //
        //!
        MHelperFunctions.giveHeight(20.h),
        FavouritesScreenContainer(
            mainTitle: "Pull Out",
            imageString: MImageStrings.pulloutwomen,
            subTitle: [
              Text(MTextString.incorporating),
            ]),
        //
        //!
        MHelperFunctions.giveHeight(20.h),
        FavouritesScreenContainer(
            mainTitle: "Avacado And Egg Toast",
            imageString: MImageStrings.avacadoandegg,
            subTitle: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.directions_run_rounded, size: 20),
                    MHelperFunctions.giveWidth(5.w),
                    const Text('150 KCal', overflow: TextOverflow.ellipsis)
                  ])
            ])
      ],
    );
  }
}
