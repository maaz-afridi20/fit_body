import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupProfileScreen extends StatelessWidget {
  const SetupProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppbar(
          titleColor: MColors.yellowishColor,
          titleFontsize: 14.sp,
          showActionWidget: false),
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
            Text(MTextString.edityourprofile,
                    style: MTextStyles.mNormalStyle(),
                    textAlign: TextAlign.center)
                .px(35.w),
            //
            //! Profile image...
            MHelperFunctions.giveHeight(20.h),
            ResizableContainer(widgets: [
              MHelperFunctions.giveHeight(10.h),
              Center(
                child: Stack(children: [
                  // Center(child: Image.asset(MImageStrings.profile)),
                  SizedBox(
                    height: 125.h,
                    width: 125.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: getImageWidget(
                        "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        fit: BoxFit.fill,
                        placeHolder: (p0, p1) =>
                            GeneralShimmer(height: 100.h, width: 100.w),
                      ),
                    ),
                  ),

                  Positioned(
                      right: 0.w,
                      bottom: 10.h,
                      child: Image.asset("assets/icons/pencil.png")),
                ]),
              ),
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
