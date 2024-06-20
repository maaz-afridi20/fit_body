import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupWeightScreen extends StatelessWidget {
  const SetupWeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeightWeightSelectController());
    return Scaffold(
        appBar: MAppbar(
            titleColor: MColors.yellowishColor,
            titleFontsize: 14.sp,
            showActionWidget: false),
        body: Column(children: [
          Text(MTextString.whatisyourweight,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.loremIpsum,
              style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),

          //! kg selection container...
          MHelperFunctions.mHeightBox(50),
          const KgLbSelection().px(35.w),

          //
          //
          //! List Wheel scrolling...
          MHelperFunctions.mHeightBox(50),
          SizedBox(
            width: MHelperFunctions.screenWidth(),
            height: 80,
            child: RotatedBox(
              quarterTurns: 1,
              child: ListWheelScrollView(
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 70,
                  onSelectedItemChanged: (value) =>
                      controller.updateSelectedWeight(value + 1),
                  overAndUnderCenterOpacity: 0.5,
                  magnification: 1.2,
                  children: List.generate(100, (index) {
                    return SizedBox(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text('${index + 1}',
                            style: MTextStyles.mHeadingStyle(fontSize: 40.sp)),
                      ),
                    );
                  })),
            ),
          ),

          //! lines of height selector...
          const ResizableContainer(
              widgets: [LinerInContainer(direction: Axis.horizontal)]),
          MHelperFunctions.mHeightBox(16),
          const Image(image: AssetImage(MImageStrings.polygon)),
          MHelperFunctions.mHeightBox(20),

          //
          //! Showing KG
          Obx(() => RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: '${controller.selectedWeight.value}',
                    style: MTextStyles.mHeadingStyle(fontSize: 64.sp)),
                const TextSpan(text: "  "),
                TextSpan(
                    text: "KG",
                    style: MTextStyles.mHeadingStyle(
                        fontSize: 20.sp, color: Colors.white.withOpacity(0.5)))
              ]))),

          //! Continue btnn...
          MHelperFunctions.mHeightBox(50),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const SetupHeight())),
          MHelperFunctions.mHeightBox(20)
        ])
            .wrapWithSingleChildScrollView()
            .animate()
            .fadeIn(duration: const Duration(seconds: 2)));
  }
}
