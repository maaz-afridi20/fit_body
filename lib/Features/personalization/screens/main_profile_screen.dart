import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: 300.h,
              child: ResizableContainer(widgets: [
                const MAppbar(
                    appbarTitle: "My Profile",
                    centerTitle: false,
                    titleColor: Colors.white),
                Center(
                  child: Column(
                    children: [
                      Image.asset(MImageStrings.profile),
                      MHelperFunctions.giveHeight(10.h),
                      Text('Madison Smith', style: MTextStyles.mHeadingStyle()),
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
                              style: MTextStyles.mNormalStyle(fontSize: 13.sp)),
                        ],
                      ),
                    ],
                  ).animate().fadeIn(duration: const Duration(seconds: 3)),
                ),
              ]),
            ),
            //
            //! profile listile...
            MHelperFunctions.giveHeight(48.h),
            const ProfileTileIconList()
          ],
        ),
        //
        //! showing user weight, height container.
        // const UserBodyInfoRowContainer(),
        Positioned(
          // top: 275.h,
          top: 270,
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ]),
    );
  }
}
