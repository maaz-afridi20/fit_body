import 'package:fit_body/Utils/constants/exports.dart';

class AllFavouritesScreen extends StatelessWidget {
  const AllFavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(appbarTitle: "Favourites", showActionWidget: true),
        body: Column(children: [
          //
          //! sort by choice chips  (row.)
          const ChoicChipsRow(),

          //
          //
          //! favourites screen container list.
          MHelperFunctions.mHeightBox(30),
          const FavouritesScreenContainerList(),

          //
          //
          //!
          MHelperFunctions.mHeightBox(30)
        ]).px(35.w).wrapWithSingleChildScrollView());
  }
}
