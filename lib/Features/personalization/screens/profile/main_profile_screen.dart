import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const MAppbar(
                appbarTitle: "My Profile",
                centerTitle: false,
                showActionWidget: false,
                titleColor: Colors.white),
            body: Stack(children: [
              Column(children: [
                ResizableContainer(widgets: [
                  Center(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 125.h,
                      width: 125.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200.r),
                        child: getImageWidget(
                          "https://images.pexels.com/photos/634030/pexels-photo-634030.jpeg?auto=compress&cs=tinysrgb&w=600",
                          fit: BoxFit.fill,
                          placeHolder: (p0, p1) => const ProfileShimmer(),
                        ),
                      ),
                    ),
                    MHelperFunctions.mHeightBox(10),
                    Text('Madison Smith', style: MTextStyles.mHeadingStyle()),
                    Text('Madi@gmail.com',
                        style: MTextStyles.mNormalStyle(fontSize: 13.sp)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('BirthDay : ',
                          style: MTextStyles.mNormalStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w600)),
                      Text('April First',
                          style: MTextStyles.mNormalStyle(fontSize: 13.sp))
                    ])
                  ]).animate().fadeIn(duration: const Duration(seconds: 2))),
                  MHelperFunctions.mHeightBox(30)
                ]),
                //
                //! profile listile...
                MHelperFunctions.mHeightBox(48),
                const ProfileTileIconList()
              ]),
              //
              //! showing user weight, height container.
            ]).wrapWithSingleChildScrollView()));
  }
}

  // Container(
  //         height: 60,
  //         width: double.infinity,
  //         decoration: BoxDecoration(
  //             color: Colors.amber, borderRadius: BorderRadius.circular(20)))