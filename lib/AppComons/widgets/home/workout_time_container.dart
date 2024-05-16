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
              color: MColors.homeContainerBlackClr,
              borderRadius: BorderRadius.circular(16.r)),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r)),
                      child: Image.asset(containerImage, fit: BoxFit.fitWidth),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              child: Icon(Icons.access_time_filled_rounded,
                                  color: Colors.white, size: 15),
                            ),
                            MHelperFunctions.giveWidth(5.w),
                            Flexible(
                              child: Text('12 Minutes',
                                  style:
                                      MTextStyles.mNormalStyle(fontSize: 12.sp),
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                child: Icon(Icons.fire_extinguisher,
                                    color: Colors.white, size: 15),
                              ),
                              MHelperFunctions.giveWidth(3.w),
                              Flexible(
                                child: Text(
                                  '120 KCal',
                                  style:
                                      MTextStyles.mNormalStyle(fontSize: 12.sp),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ).px(11.w),
                  )
                ],
              ),
              Positioned(
                right: 10.w,
                top: 8.h,
                child: GestureDetector(
                  onTap: () {
                    controller.toggleFavourite(id!);
                  },
                  child: Obx(() => Icon(Icons.star_rounded,
                      color: controller.favouriteStates[id] ?? false
                          ? MColors.yellowishColor
                          : Colors.white)),
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
