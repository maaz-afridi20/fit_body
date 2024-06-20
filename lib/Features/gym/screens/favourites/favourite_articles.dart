import 'package:fit_body/Utils/constants/exports.dart';

class FavouriteArticles extends StatelessWidget {
  const FavouriteArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(
        showActionWidget: false,
      ),
      body: Column(children: [
        FavouritesScreenContainer(
            mainTitle: "Boost Energy And Vitality",
            imageString: MImageStrings.singlefemale,
            subTitle: [Text(MTextString.incorporating)]),
        MHelperFunctions.mHeightBox(20),
        FavouritesScreenContainer(
            mainTitle: "Avacado And Egg Toast",
            imageString: MImageStrings.avacadoandegg,
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
      ]).px(35.w),
    ));
  }
}
