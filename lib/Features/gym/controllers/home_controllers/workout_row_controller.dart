import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutRowController extends GetxController {
  static WorkoutRowController get instance => Get.find();

  final RxInt currentIndex = 0.obs;

  void updateIndex(int indexValue) => currentIndex.value = indexValue;

  Widget columnWithImgAndText(
      IconData icon, String text, int index, Function() onTap) {
    return Obx(() => GestureDetector(
        onTap: () {
          updateIndex(index);
          onTap();
        },
        child: Column(children: [
          Icon(icon,
              size: 32.h,
              color: currentIndex.value == index
                  ? MColors.yellowishColor
                  : MColors.purpleColor),
          MHelperFunctions.giveHeight(6.h),
          Text(text,
              style: MTextStyles.mNormalStyle(
                  color: currentIndex.value == index
                      ? MColors.yellowishColor
                      : MColors.purpleColor,
                  fontSize: 12.sp))
        ])));
  }
}
