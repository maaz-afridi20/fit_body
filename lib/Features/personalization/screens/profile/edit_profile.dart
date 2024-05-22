import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ResizableContainer(widgets: [
                    const MAppbar(
                        appbarTitle: "My Profile",
                        centerTitle: false,
                        titleColor: Colors.white),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 125.h,
                            width: 125.w,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: getImageWidget(
                                  "https://images.pexels.com/photos/634030/pexels-photo-634030.jpeg?auto=compress&cs=tinysrgb&w=600",
                                  fit: BoxFit.fill,
                                  placeHolder: (p0, p1) =>
                                      const ProfileShimmer()),
                            ),
                          ),
                          MHelperFunctions.giveHeight(10.h),
                          Text('Madison Smith',
                              style: MTextStyles.mHeadingStyle()),
                          Text('Madi@gmail.com',
                              style: MTextStyles.mNormalStyle(fontSize: 13.sp)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('BirthDay : ',
                                  style: MTextStyles.mNormalStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600)),
                              Text('April First',
                                  style: MTextStyles.mNormalStyle(
                                      fontSize: 13.sp)),
                            ],
                          ),
                        ],
                      ).animate().fadeIn(duration: const Duration(seconds: 3)),
                    ),
                    MHelperFunctions.giveHeight(30.h),
                  ]),
                  Positioned(
                          top: 150.h,
                          right: 150.w,
                          child: Image.asset("assets/icons/pencil.png"))
                      .animate()
                      .fadeIn(duration: const Duration(seconds: 3)),
                ],
              ),
              MHelperFunctions.giveHeight(48.h),
              //
              //! Edit profile form widget.
              const EditProfileForm().px(35.w),
            ],
          ),
        ),
      ),
    );
  }
}
