import 'package:fit_body/Utils/constants/exports.dart';

class ChallengesA extends StatelessWidget {
  const ChallengesA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Challenges and competitions',
          style: MTextStyles.mHeadingStyle(
              color: MColors.yellowishColor, fontWeight: FontWeight.w400)),
      MHelperFunctions.mHeightBox(20),
      FavouritesScreenContainer(
              mainTitle: "Cycling Challenge",
              subTitle: [Text(MTextString.loremIpsum)],
              imageString:
                  "https://images.pexels.com/photos/6389506/pexels-photo-6389506.jpeg?auto=compress&cs=tinysrgb&w=600")
          .onTap(() => MHelperFunctions.navigateTo(context, const ChallegesB()))
          .pOnly(bottom: 20),
      FavouritesScreenContainer(
              mainTitle: "Power Squat",
              subTitle: [Text(MTextString.loremIpsum)],
              imageString:
                  "https://images.pexels.com/photos/3775606/pexels-photo-3775606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
          .pOnly(bottom: 20),
      FavouritesScreenContainer(
              mainTitle: "Press Leg Ultimate",
              subTitle: [Text(MTextString.loremIpsum)],
              imageString:
                  "https://images.pexels.com/photos/18060020/pexels-photo-18060020/free-photo-of-bodybuilder-using-leg-press-at-the-gym.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
          .pOnly(bottom: 20)
    ]).px32());
  }
}
