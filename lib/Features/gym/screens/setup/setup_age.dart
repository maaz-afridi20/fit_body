import 'package:fit_body/Features/gym/screens/setup/setup_weight.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class SetupAgeScreen extends StatelessWidget {
  const SetupAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MColors.balckColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () => MHelperFunctions.navigateBack(context),
              child: Icon(Icons.arrow_back_ios,
                  size: 15.sp, color: MColors.yellowishColor)),
          title: Text('Back',
              style: MTextStyles.mNormalStyle(
                  fontSize: 15, color: MColors.yellowishColor)),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                MHelperFunctions.giveHeight(30.h),
                Text(MTextString.howoldareu,
                    style: MTextStyles.mHeadingStyle(fontSize: 25)),
                MHelperFunctions.giveHeight(30.h),
                Text(MTextString.loremIpsum,
                        style: MTextStyles.mNormalStyle(),
                        textAlign: TextAlign.center)
                    .px(35.w),
                MHelperFunctions.giveHeight(80.h),
                Text('80', style: MTextStyles.mHeadingStyle(fontSize: 65)),
                MHelperFunctions.giveHeight(30.h),
                const Image(image: AssetImage(MImageStrings.polygon)),
                // MHelperFunctions.giveHeight(23.h),
                MHelperFunctions.giveHeight(
                    MHelperFunctions.screenHeight() * .025),

                const ResizableContainer(widgets: [NumberSelector()]),
                const Spacer(),
                GlassyEffectElevatedBtn(
                    btnText: "Continue",
                    onPress: () => MHelperFunctions.navigateTo(
                        context, const SetupWeightScreen())),
                MHelperFunctions.giveHeight(20.h),
              ],
            ),
            Positioned(
              left: MHelperFunctions.screenWidth() * 0.40,
              top: MHelperFunctions.screenHeight() * 0.465,
              child: Container(
                  height: 120.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r))),
            ),
            Positioned(
              right: MHelperFunctions.screenWidth() * 0.40,
              top: MHelperFunctions.screenHeight() * 0.465,
              child: Container(
                  height: 120.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r))),
            ),
          ],
        ));
  }
}
