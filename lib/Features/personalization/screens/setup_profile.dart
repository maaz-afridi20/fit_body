import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupProfileScreen extends StatelessWidget {
  const SetupProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: MAppbar(titleColor: MColors.yellowishColor, titleFontsize: 14.sp),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(MTextString.fillprofile,
                  style: MTextStyles.mHeadingStyle(fontSize: 25)),
            ),
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.loremIpsum,
                    style: MTextStyles.mNormalStyle(),
                    textAlign: TextAlign.center)
                .px(35.w),
            //
            //! Profile image...
            MHelperFunctions.giveHeight(20.h),
            ResizableContainer(widgets: [
              MHelperFunctions.giveHeight(10.h),
              Stack(children: [
                // Center(child: Image.asset(MImageStrings.profile)),
                SizedBox(
                  height: 200.h,
                  width: 200.w,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250.r),
                      child: const MCachedNetworkImage(
                          imageUrl:
                              "https://images.pexels.com/photos/1035673/pexels-photo-1035673.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                  ),
                ),
                Positioned(
                    right: MHelperFunctions.screenWidth() * 0.35,
                    bottom: 10,
                    child: Image.asset("assets/icons/pencil.png")),
              ]),
              MHelperFunctions.giveHeight(10.h),
            ]),

            //! profile info...
            MHelperFunctions.giveHeight(20.h),
            const ProfileInfoForm(),
            MHelperFunctions.giveHeight(30.h),
          ],
        ).animate().fadeIn(duration: const Duration(seconds: 3)),
      ),
    );
  }
}
