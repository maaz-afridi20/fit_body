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
        body: Column(children: [
          Align(
              alignment: Alignment.center,
              child: Text(MTextString.fillprofile,
                  style: MTextStyles.mHeadingStyle(fontSize: 25))),
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.edityourprofile,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          //
          //! Profile image...
          MHelperFunctions.mHeightBox(20),
          ResizableContainer(widgets: [
            MHelperFunctions.mHeightBox(10),
            Center(
                child: Stack(children: [
              SizedBox(
                  height: 125.h,
                  width: 125.w,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: getImageWidget(
                          "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                          fit: BoxFit.fill,
                          placeHolder: (p0, p1) =>
                              GeneralShimmer(height: 100.h, width: 100.w)))),
              Positioned(
                  right: 0.w,
                  bottom: 10.h,
                  child: Image.asset("assets/icons/pencil.png"))
            ])),
            MHelperFunctions.mHeightBox(10),
          ]),

          //! profile info...
          MHelperFunctions.mHeightBox(20),
          const ProfileInfoForm(),
          MHelperFunctions.mHeightBox(30),
        ])
            .animate()
            .fadeIn(duration: const Duration(seconds: 2))
            .wrapWithSingleChildScrollView());
  }
}
