import 'package:fit_body/Utils/constants/exports.dart';

class FavouritesScreenContainer extends StatelessWidget {
  const FavouritesScreenContainer(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.imageString});

  final String mainTitle;
  final List<Widget> subTitle;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return RowContainerWithAndImg(
        imageString: imageString,
        childrensInColumn: [
          Text(mainTitle,
              style: MTextStyles.mNormalStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: MColors.balckColor)),
          MHelperFunctions.mHeightBox(10),
          DefaultTextStyle(
              style: MTextStyles.mNormalStyle(
                  color: MColors.balckColor, fontSize: 12.sp),
              maxLines: 2,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              child: Wrap(
                  alignment: WrapAlignment.start,
                  children: subTitle
                      .map((mWidget) => Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: mWidget))
                      .toList()))
        ],
        showPositonedIcon: true);
  }
}
