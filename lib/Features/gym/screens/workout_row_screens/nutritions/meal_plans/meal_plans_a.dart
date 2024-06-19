import 'dart:math';

import 'package:fit_body/Features/gym/screens/workout_row_screens/nutritions/meal_plans/meal_plans_b.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class MealPlans extends StatelessWidget {
  const MealPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: getImageWidget(
                  'https://images.pexels.com/photos/5638268/pexels-photo-5638268.jpeg?auto=compress&cs=tinysrgb&w=600',
                  fit: BoxFit.fitHeight,
                  placeHolder: (p0, p1) => GeneralShimmer(
                      height: MHelperFunctions.screenHeight(),
                      width: double.infinity))),
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
              20.widthBox,
              const Icon(Icons.person_2_sharp, size: 18, color: Colors.white)
            ]).px(32.w),
          ),
          ResizableContainer(widgets: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              70.heightBox,
              SizedBox(
                  height: 39.h,
                  width: 39.w,
                  child: getImageWidget(MImageStrings.nutrituion)),
              9.widthBox,
              Text('Meal Plans', style: MTextStyles.mHeadingStyle(fontSize: 20))
            ]),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
              textAlign: TextAlign.center,
            ).px(32.w).py(20.h)
          ]).centered(),
          Positioned(
              bottom: 270,
              left: 99,
              child: GlassyEffectElevatedBtn(
                  btnText: "Know Your Plan",
                  onPress: () => Get.to(() => const MealPlansB())))
        ],
      ),
    );
  }
}
