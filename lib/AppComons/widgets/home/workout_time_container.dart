import '../../../Utils/constants/exports.dart';

class WorkoutTimeContainer extends StatelessWidget {
  const WorkoutTimeContainer(
      {super.key,
      required this.containerImage,
      required this.containerTitle,
      this.id});

  final String containerImage;
  final String containerTitle;
  final String? id;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LikeBtnController());
    return Expanded(
      child: Container(
          height: 160.h,
          width: MHelperFunctions.screenWidth(),
          decoration: BoxDecoration(
              color: MColors.balckColor,
              borderRadius: BorderRadius.circular(16.r)),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 90,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r)),
                      child: getImageWidget(
                        containerImage,
                        fit: BoxFit.fitWidth,
                        placeHolder: (p0, p1) =>
                            const GeneralShimmer(height: 90),
                      ),
                    ),
                  ),
                  MHelperFunctions.giveHeight(5.h),
                  Text(containerTitle,
                          style: MTextStyles.mNormalStyle(
                              fontSize: 12.sp, color: MColors.yellowishColor),
                          overflow: TextOverflow.ellipsis)
                      .px(11.w),
                  MHelperFunctions.giveHeight(5.h),
                  Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Flexible(
                            child: Text('12 Minutes',
                                style:
                                    MTextStyles.mNormalStyle(fontSize: 12.sp),
                                overflow: TextOverflow.ellipsis)),
                        Flexible(
                            child: Text('120 KCal',
                                style:
                                    MTextStyles.mNormalStyle(fontSize: 12.sp),
                                overflow: TextOverflow.ellipsis))
                      ]).px(11.w)),
                  10.heightBox
                ],
              ),
              Positioned(
                right: 10.w,
                top: 8.h,
                child: GestureDetector(
                  onTap: () {
                    controller.toggleFavourite(id!);
                  },
                  child: Obx(
                    () => Icon(Icons.star_rounded,
                        color: controller.favouriteStates[id] ?? false
                            ? MColors.yellowishColor
                            : Colors.white),
                  ),
                ),
              ),
              Positioned(
                right: 10.w,
                bottom: 58.h,
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: MColors.darkPurpleColor),
                  child: const Center(
                      child:
                          Icon(Icons.play_arrow_rounded, color: Colors.white)),
                ),
              )
            ],
          )),
    );
  }
}
