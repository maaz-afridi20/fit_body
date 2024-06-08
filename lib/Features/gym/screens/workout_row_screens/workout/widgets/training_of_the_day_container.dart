import 'package:fit_body/Utils/constants/exports.dart';

class TrainingOfTheDayContainer extends StatelessWidget {
  const TrainingOfTheDayContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MHelperFunctions.screenWidth(),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: getImageWidget(
                placeHolder: (p0, p1) => const GeneralShimmer(),
                "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 18,
                width: 130,
                decoration: BoxDecoration(
                    color: MColors.yellowishColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(35.r),
                    )),
                child: Center(
                  child: Text("Training of the day",
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                  width: MHelperFunctions.screenWidth() - 42,
                  height: MHelperFunctions.screenHeight() * .060,
                  decoration: BoxDecoration(
                      color: MColors.listileBlackColor.withOpacity(0.7),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        "Functional Training"
                            .text
                            .size(14.sp)
                            .fontWeight(FontWeight.w500)
                            .color(MColors.yellowishColor)
                            .make(),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Row(children: [
                            const Icon(Icons.access_time_filled_rounded,
                                color: Colors.white, size: 15),
                            3.widthBox,
                            '45 Min'.text.size(12.sp).light.white.make()
                          ]),
                          25.widthBox,
                          Row(children: [
                            const Icon(Icons.fire_extinguisher,
                                color: Colors.white, size: 15),
                            3.widthBox,
                            '1450 KCal'.text.size(12.sp).light.white.make()
                          ]),
                          25.widthBox,
                          Row(children: [
                            getImageWidget(MImageStrings.workoutwhite),
                            3.widthBox,
                            '5 Exercise'.text.size(12.sp).light.white.make()
                          ]),
                          const Spacer(),
                          const Icon(Icons.star_rounded, color: Colors.white)
                        ]),
                        5.heightBox
                      ]).px(17.w)))
        ]));
  }
}
