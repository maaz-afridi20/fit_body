import 'package:fit_body/Utils/constants/exports.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: MAppbar(
                showLeadingWidget: false,
                appbarTitle: "Hi, Madison",
                showActionWidget: true,
                onSearchIconTapped: () =>
                    Get.to(() => const HomeScreenAllSearch()),
                onNotificationIconTapped: () =>
                    Get.to(() => const NotificationScreen()),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(kToolbarHeight),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(MTextString.chellengeyourlimit,
                                style: MTextStyles.mNormalStyle())
                            .pOnly(left: 50.w)))),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MHelperFunctions.mHeightBox(8),
                  //
                  //! workout row..
                  const WorkOutRow(),

                  //
                  //! recommendation row...
                  MHelperFunctions.mHeightBox(5),
                  const RecommendationRow(),
                  MHelperFunctions.mHeightBox(6),
                  //
                  //! image row...
                  Row(
                    children: [
                      const WorkoutTimeContainer(
                        containerImage:
                            "https://images.pexels.com/photos/3775566/pexels-photo-3775566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        containerTitle: "Squat Exercise",
                        id: "workingTimeContainer1",
                      ),
                      MHelperFunctions.mWidthBox(10),
                      const WorkoutTimeContainer(
                        containerImage:
                            "https://images.pexels.com/photos/4662352/pexels-photo-4662352.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        containerTitle: "Full Body Stretching",
                        id: "workingTimeContainer2",
                      ),
                    ],
                  ).px(35.w),
                  //
                  //! row continer with and image...
                  MHelperFunctions.mHeightBox(19),
                  ResizableContainer(
                      applyWidgetPadding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 25.h),
                      widgets: [
                        RowContainerWithAndImg(
                            imageString:
                                "https://images.pexels.com/photos/7592988/pexels-photo-7592988.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                            backgroundColor: const Color(0xff212020),
                            childrensInColumn: [
                              Text('Weekly Challenge',
                                  style: MTextStyles.mHeadingStyle(
                                      fontSize: 24.sp,
                                      color: MColors.yellowishColor),
                                  textAlign: TextAlign.center),
                              MHelperFunctions.mHeightBox(2),
                              Text('Plank With Hip Twist',
                                  style:
                                      MTextStyles.mNormalStyle(fontSize: 12.sp),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis)
                            ])
                      ]),
                  //
                  //!
                  MHelperFunctions.mHeightBox(16),
                  Text('Articles And Tips',
                          style: MTextStyles.mNormalStyle(
                              color: MColors.yellowishColor))
                      .px(35.w),
                  //
                  //! only image container...
                  MHelperFunctions.mHeightBox(8),
                  SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const OnlyImageContainer(
                                    imageString:
                                        "https://images.pexels.com/photos/8844377/pexels-photo-8844377.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                                    id: 'onlyImgContainer1'),
                                MHelperFunctions.mHeightBox(8),
                                Text('Suppliment Guide',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: MTextStyles.mNormalStyle(
                                        fontSize: 12.sp))
                              ],
                            ),
                            MHelperFunctions.mWidthBox(10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const OnlyImageContainer(
                                      imageString:
                                          'https://images.pexels.com/photos/416778/pexels-photo-416778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                      id: 'onlyImgContainer2'),
                                  MHelperFunctions.mHeightBox(8),
                                  Text('15 Quick and effective\ndaily routine',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: MTextStyles.mNormalStyle(
                                          fontSize: 12.sp))
                                ])
                          ]).px(35.w))
                ]).wrapWithSingleChildScrollView()));
  }
}
