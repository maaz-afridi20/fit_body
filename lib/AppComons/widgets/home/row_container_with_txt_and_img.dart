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
      height: 125,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: childrensInColumn,
              ).pOnly(left: 25.w, right: 8.w),
            ),
          ),
          Flexible(
            child: Stack(
              children: [
                SizedBox(
                  height: 125.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: getImageWidget(
                      imageString,
                      placeHolder: (p0, p1) =>
                          GeneralShimmer(height: 125.h, width: 150.w),
                      fit: BoxFit.cover,
                    ),
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
