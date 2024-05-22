import '../../../Utils/constants/exports.dart';

class RowContainerWithAndImg extends StatelessWidget {
  const RowContainerWithAndImg(
      {super.key,
      required this.imageString,
      required this.childrensInColumn,
      this.showPositonedIcon,
      this.backgroundColor});

  final String imageString;
  final Color? backgroundColor;
  final List<Widget> childrensInColumn;
  final bool? showPositonedIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MHelperFunctions.screenWidth(),
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: childrensInColumn,
            ).pOnly(left: 25.w, right: 18.w),
          ),
          Flexible(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: getImageWidget(
                    imageString,
                    placeHolder: (p0, p1) =>
                        GeneralShimmer(height: 125.h, width: 150.w),
                    fit: BoxFit.cover,
                  ),
                ),
                if (showPositonedIcon != null)
                  Positioned(
                      top: 10.h,
                      right: 8.w,
                      child: const Icon(Icons.star_rounded,
                          color: MColors.yellowishColor))
              ],
            ),
          )
        ],
      ),
    );
  }
}
