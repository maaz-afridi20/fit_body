import '../../../Utils/constants/exports.dart';

class WorkoutTimeContainer extends StatelessWidget {
  const WorkoutTimeContainer({
    super.key,
    required this.containerImage,
    required this.containerTitle,
  });

  final String containerImage;
  final String containerTitle;

  @override
  Widget build(BuildContext context) {
    RxBool isFavourite = false.obs;
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
                              fontSize: 12.sp, color: MColors.yellowishColor))
                      .px(11.w),
                  MHelperFunctions.giveHeight(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            child: Icon(Icons.access_time_filled_rounded,
                                color: Colors.white, size: 15),
                          ),
                          MHelperFunctions.giveWidth(5.w),
                          Text('12 Minutes',
                              style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            child: Icon(Icons.fire_extinguisher,
                                color: Colors.white, size: 15),
                          ),
                          MHelperFunctions.giveWidth(5.w),
                          Text('120 KCal',
                              style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
                        ],
                      )
                    ],
                  ).px(11.w)
                ],
              ),
              GestureDetector(
                onTap: () => isFavourite.toggle(),
                child: Positioned(
                    right: 10.w,
                    top: 8.h,
                    child: Obx(() => Icon(Icons.star_rounded,
                        color: isFavourite.value
                            ? MColors.yellowishColor
                            : Colors.transparent))),
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
