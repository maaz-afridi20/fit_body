import 'dart:math';

import 'package:fit_body/Utils/constants/exports.dart';

class ChallegesB extends StatelessWidget {
  const ChallegesB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: getImageWidget(
                'https://fitwithursula.com/wp-content/uploads/2023/06/people-doing-indoor-cycling.jpg',
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
            Text('Cycling Challenges',
                style: MTextStyles.mHeadingStyle(fontSize: 20))
          ]),
          Text(MTextString.loremIpsum, textAlign: TextAlign.center)
              .px(32.w)
              .py(20.h)
        ]).centered(),
        Positioned(
            bottom: 270,
            left: 99,
            child: GlassyEffectElevatedBtn(
                btnText: "Start Now",
                onPress: () =>
                    MHelperFunctions.navigateTo(context, const ChallengesC())))
      ]),
    );
  }
}
