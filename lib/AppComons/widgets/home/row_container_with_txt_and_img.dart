import '../../../Utils/constants/exports.dart';

class RowContainerWithAndImg extends StatelessWidget {
  const RowContainerWithAndImg(
      {super.key,
      required this.imageString,
      required this.childrensInColumn,
      this.backgroundColor});

  final String imageString;
  final Color? backgroundColor;
  final List<Widget> childrensInColumn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MHelperFunctions.screenWidth(),
      height: 125.h,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: childrensInColumn,
            ).pOnly(left: 25.w, right: 18.w),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              imageString,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
