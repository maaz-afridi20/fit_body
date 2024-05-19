import 'package:fit_body/Utils/constants/exports.dart';

class ChoiceChipsWidget extends StatelessWidget {
  const ChoiceChipsWidget({
    super.key,
    required this.chipTitle,
    this.backgroundColor,
  });

  final String chipTitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChipController());

    return Obx(() {
      final isSelected = controller.selectedChip.value == chipTitle;
      return SizedBox(
          height: 30.h,
          child: ChoiceChip(
              showCheckmark: false,
              label: Text(chipTitle),
              selected: isSelected,
              labelStyle: MTextStyles.mNormalStyle(
                  color: isSelected ? MColors.balckColor : MColors.purpleColor,
                  fontSize: 12.sp),
              onSelected: (selected) {
                controller.selectChip(chipTitle);
                if (chipTitle == 'Video') {
                  Get.to(() => const FavouriteVideos())!
                      .then((value) => controller.resetChip());
                } else if (chipTitle == 'Articles') {
                  Get.to(() => const FavouriteArticles())!
                      .then((value) => controller.resetChip());
                }
              },
              selectedColor: isSelected
                  ? (backgroundColor ?? MColors.yellowishColor)
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.r))));
    });
  }
}
