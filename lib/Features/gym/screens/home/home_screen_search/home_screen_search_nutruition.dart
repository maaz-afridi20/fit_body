import '../../../../../Utils/constants/exports.dart';

class HomeScreenSearchNutruition extends StatelessWidget {
  const HomeScreenSearchNutruition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          27.heightBox,
          Text('Top Searches',
              style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
          19.heightBox,
          const SearchFoundTileWidget(title: "Breakfast"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Yougurt"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Smothie"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Chicken"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Vegeterial"),
        ],
      ),
    );
  }
}
