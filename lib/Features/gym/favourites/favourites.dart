import 'package:fit_body/Utils/constants/exports.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: MAppbar(
        appbarTitle: "Favourites",
        action: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.search, color: MColors.darkPurpleColor),
              MHelperFunctions.giveWidth(20.w),
              const Icon(Icons.notifications, color: MColors.darkPurpleColor),
              MHelperFunctions.giveWidth(20.w),
              const Icon(Icons.person_rounded, color: MColors.darkPurpleColor),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              MHelperFunctions.giveWidth(17.w),
              Text('Sort By',
                  style: MTextStyles.mNormalStyle(
                      fontSize: 12.sp, color: MColors.yellowishColor)),
              MHelperFunctions.giveWidth(17.w),
              const ChoiceChipsWidget(
                  chipTitle: "All", backgroundColor: MColors.yellowishColor),
              MHelperFunctions.giveWidth(17.w),
              const ChoiceChipsWidget(chipTitle: "Video"),
              MHelperFunctions.giveWidth(17.w),
              const ChoiceChipsWidget(chipTitle: "Articles"),
            ],
          )
        ],
      ).px(35.w),
    );
  }
}
