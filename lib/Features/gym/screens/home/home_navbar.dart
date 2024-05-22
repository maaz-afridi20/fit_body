import 'package:fit_body/Utils/constants/exports.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppbar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //
              //! workout row..
              MHelperFunctions.giveHeight(12.h),
              const WorkOutRow(),
              //
              //! recommendation row...
              MHelperFunctions.giveHeight(5.h),
              const RecommendationRow(),
              MHelperFunctions.giveHeight(6.h),
              //
              //! image row...
              Row(
                children: [
                  const WorkoutTimeContainer(
                    // containerImage: MImageStrings.multiplewomens,
                    containerImage:
                        "https://images.pexels.com/photos/3775566/pexels-photo-3775566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    containerTitle: "Squat Exercise",
                    id: "workingTimeContainer1",
                  ),
                  MHelperFunctions.giveWidth(10.w),
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
              MHelperFunctions.giveHeight(19.h),
              ResizableContainer(
                  applyWidgetPadding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                  widgets: [
                    RowContainerWithAndImg(
                      imageString:
                          "https://images.pexels.com/photos/7592988/pexels-photo-7592988.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      backgroundColor: const Color(0xff212020),
                      childrensInColumn: [
                        Text(
                          'Weekly Challenge',
                          style: MTextStyles.mHeadingStyle(
                              fontSize: 24.sp, color: MColors.yellowishColor),
                          textAlign: TextAlign.center,
                        ),
                        MHelperFunctions.giveHeight(2.h),
                        Text('Plank With Hip Twist',
                            style: MTextStyles.mNormalStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis),
                      ],
                    )
                  ]),
              //
              //!
              MHelperFunctions.giveHeight(16.h),
              Text('Articles And Tips',
                      style: MTextStyles.mNormalStyle(
                          color: MColors.yellowishColor))
                  .px(35.w),
              //
              //! only image container...
              MHelperFunctions.giveHeight(8.h),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const OnlyImageContainer(
                            imageString:
                                "https://images.pexels.com/photos/8844377/pexels-photo-8844377.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                            id: 'onlyImgContainer1'),
                        8.heightBox,
                        Text('Suppliment Guide',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: MTextStyles.mNormalStyle(fontSize: 12.sp))
                      ],
                    ),
                    10.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const OnlyImageContainer(
                            imageString:
                                'https://images.pexels.com/photos/416778/pexels-photo-416778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            id: 'onlyImgContainer2'),
                        8.heightBox,
                        Text('15 Quick and effective\ndaily routine',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: MTextStyles.mNormalStyle(fontSize: 12.sp))
                      ],
                    ),
                  ],
                ).px(35.w),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
