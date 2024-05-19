import 'package:fit_body/Features/gym/favourites/widgets/favourite_screen_container_list.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              MAppbar(
                appbarTitle: "Favourites",
                action: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.search, color: MColors.darkPurpleColor),
                      MHelperFunctions.giveWidth(20.w),
                      const Icon(Icons.notifications,
                          color: MColors.darkPurpleColor),
                      MHelperFunctions.giveWidth(20.w),
                      const Icon(Icons.person_rounded,
                          color: MColors.darkPurpleColor),
                    ],
                  )
                ],
              ),
              //
              //! sort by choice chips  (row.)
              const ChoicChipsRow(),

              //
              //
              //! favourites screen container list.
              MHelperFunctions.giveHeight(30.h),
              const FavouritesScreenContainerList(),

              //
              //
              //!
              MHelperFunctions.giveHeight(30.h),
            ],
          ).px(35.w),
        ),
      ),
    );
  }
}
