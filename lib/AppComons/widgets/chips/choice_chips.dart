import 'package:fit_body/Features/gym/controllers/chip_controller/chip_controller.dart';
import 'package:fit_body/Features/gym/favourites/favourite_articles.dart';
import 'package:fit_body/Features/gym/favourites/favourite_videos.dart';
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
                  MHelperFunctions.navigateTo(context, const FavouriteVideos());
                } else if (chipTitle == 'Articles') {
                  MHelperFunctions.navigateTo(
                      context, const FavouriteArticles());
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
