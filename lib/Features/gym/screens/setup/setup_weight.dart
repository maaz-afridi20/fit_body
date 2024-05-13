import 'package:fit_body/Utils/constants/exports.dart';

class SetupWeightScreen extends StatelessWidget {
  const SetupWeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => MHelperFunctions.navigateBack(context),
            child: Icon(Icons.arrow_back_ios,
                size: 15.sp, color: MColors.yellowishColor)),
        title: Text("Back",
            style: MTextStyles.mNormalStyle(
                fontSize: 15, color: MColors.yellowishColor)),
      ),
      body: Column(
        children: [
          Text(MTextString.whatisyourweight,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),

          //! kg selection container...
          MHelperFunctions.giveHeight(50.h),
          const KgLbSelection().px(35.w),

          MHelperFunctions.giveHeight(50.h),
          ResizableContainer(widgets: [MHelperFunctions.giveHeight(80.h)]),
          MHelperFunctions.giveHeight(16.h),
          const Image(image: AssetImage(MImageStrings.polygon)),
          MHelperFunctions.giveHeight(20.h),
          Text('75', style: MTextStyles.mHeadingStyle(fontSize: 65.sp)),
          const Spacer(),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const SetupHeight())),
          MHelperFunctions.giveHeight(20.h),
        ],
      ),
    );
  }
}
