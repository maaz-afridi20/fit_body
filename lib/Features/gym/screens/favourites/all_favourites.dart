import 'package:fit_body/Utils/constants/exports.dart';

class AllFavouritesScreen extends StatelessWidget {
  const AllFavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const MAppbar(
                appbarTitle: "Favourites",
                showActionWidget: true,
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
