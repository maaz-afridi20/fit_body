import 'dart:math';

import 'package:fit_body/Features/gym/screens/weekly_challenges/weekly_challenges_b.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class WeeklyChallengeA extends StatelessWidget {
  const WeeklyChallengeA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: getImageWidget(
              'https://images.pexels.com/photos/13106590/pexels-photo-13106590.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              fit: BoxFit.fitHeight,
              placeHolder: (p0, p1) => GeneralShimmer(
                  height: MHelperFunctions.screenHeight(),
                  width: double.infinity))),
      Container(color: Colors.black.withOpacity(0.5)),
      Positioned(
          left: 0,
          right: 0,
          top: 60.h,
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Transform.rotate(
                angle: pi,
                child: const Icon(Icons.play_arrow_rounded,
                        size: 18, color: Colors.white)
                    .onTap(() => Get.back())),
            const Spacer(),
            const Icon(Icons.notifications, size: 18, color: Colors.white),
            MHelperFunctions.mWidthBox(20),
            const Icon(Icons.person_2_sharp, size: 18, color: Colors.white)
          ]).px(32.w)),
      ResizableContainer(widgets: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          MHelperFunctions.mHeightBox(70),
          SizedBox(
              height: 39.h,
              width: 39.w,
              child: getImageWidget(MImageStrings.workout)),
          MHelperFunctions.mWidthBox(9),
          Text('Weekly Challenge',
              style: MTextStyles.mHeadingStyle(fontSize: 20))
        ]),
        Text(MTextString.loremIpsum, textAlign: TextAlign.center)
            .px(32.w)
            .py(20.h)
      ]).centered(),
      Positioned(
          bottom: 250.h,
          left: 99.w,
          child: GlassyEffectElevatedBtn(
              btnText: "Start Now",
              onPress: () => MHelperFunctions.navigateTo(
                  context, const WeeklyChallengeB())))
    ]));
  }
}
