import 'package:fit_body/Utils/constants/exports.dart';

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
                  ),
                ),
              ]),
            ),
            MHelperFunctions.giveHeight(48.h),
            Text('Name', style: MTextStyles.mHeadingStyle()),
          ],
        ),
        //
        //! showing user weight, height container.
        Positioned(top: 270.h, child: const UserBodyInfoRowContainer()),
      ]),
    );
  }
}
