import 'package:flutter_animate/flutter_animate.dart';

import '../../../../Utils/constants/exports.dart';

class SetupGenderScreen extends StatelessWidget {
  const SetupGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppbar(
            titleColor: MColors.yellowishColor,
            titleFontsize: 14.sp,
            showActionWidget: false),
        body: Column(children: [
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.whatsyourgendr,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.mHeightBox(15),
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 35.w),
              widgets: [
                MHelperFunctions.mHeightBox(18),
                Text(
                  MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center,
                ).animate().fadeIn(duration: const Duration(seconds: 3)),
                MHelperFunctions.mHeightBox(18),
              ]),
          MHelperFunctions.mHeightBox(45),

          //! gender container.
          MGenderContainer(
            backgroundColor: Colors.white.withOpacity(0.2),
            backgroundImage: const AssetImage(MImageStrings.gendermale),
            borderWidth: 1.4.w,
          ),
          MHelperFunctions.mHeightBox(10),
          Text("Male", style: MTextStyles.mHeadingStyle(fontSize: 20)),
          MHelperFunctions.mHeightBox(19),
          const MGenderContainer(
            backgroundColor: MColors.yellowishColor,
            backgroundImage: AssetImage(MImageStrings.genderfemale),
          ),
          MHelperFunctions.mHeightBox(10),
          Text("Female", style: MTextStyles.mHeadingStyle(fontSize: 20)),
          MHelperFunctions.mHeightBox(45),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const SetupAgeScreen())),
          MHelperFunctions.mHeightBox(20)
        ])
            .wrapWithSingleChildScrollView()
            .animate()
            .fadeIn(duration: const Duration(seconds: 2)));
  }
}
