import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupStartScreen extends StatelessWidget {
  const SetupStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PopScope(
            canPop: false,
            onPopInvoked: (didPop) =>
                MHelperFunctions.showAppExitDialogue(context),
            child: Column(children: [
              SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://images.pexels.com/photos/416809/pexels-photo-416809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      placeholder: (context, url) => GeneralShimmer(
                          width: double.infinity, height: 500.h))),
              MHelperFunctions.mHeightBox(30),
              Text(MTextString.consistencyiskey,
                      style: MTextStyles.mHeadingStyle(
                          fontSize: 30.sp,
                          color: MColors.yellowishColor,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center)
                  .animate()
                  .fadeIn(duration: const Duration(seconds: 2)),
              MHelperFunctions.mHeightBox(30),
              ResizableContainer(
                  applyWidgetPadding: EdgeInsets.symmetric(horizontal: 35.w),
                  widgets: [
                    MHelperFunctions.mHeightBox(30),
                    Text(MTextString.consistencyiskeydetail,
                            style: MTextStyles.mNormalStyle(
                                color: MColors.balckColor),
                            textAlign: TextAlign.center)
                        .animate()
                        .fadeIn(duration: const Duration(seconds: 3)),
                    MHelperFunctions.mHeightBox(30)
                  ]),
              MHelperFunctions.mHeightBox(30),
              GlassyEffectElevatedBtn(
                  btnText: "Next",
                  onPress: () => MHelperFunctions.navigateTo(
                      context, const SetupGenderScreen())),
              MHelperFunctions.mHeightBox(30)
            ]).wrapWithSingleChildScrollView()));
  }
}
