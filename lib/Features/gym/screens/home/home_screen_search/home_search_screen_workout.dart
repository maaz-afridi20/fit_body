import 'package:fit_body/Utils/constants/exports.dart';

class HomeSearchScreenWorkout extends StatelessWidget {
  const HomeSearchScreenWorkout({super.key});

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
          const SearchFoundTileWidget(title: "Circuit"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Split"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Challenge"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Legs"),
          11.heightBox,
          const SearchFoundTileWidget(title: "Cardio"),
        ],
      ),
    );
  }
}
