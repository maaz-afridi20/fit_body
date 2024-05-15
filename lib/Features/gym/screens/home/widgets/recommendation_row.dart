import 'package:fit_body/Utils/constants/exports.dart';

class RecommendationRow extends StatelessWidget {
  const RecommendationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Recommendation',
            style: MTextStyles.mNormalStyle(
                color: MColors.yellowishColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400)),
        Row(
          children: [
            Text('See All',
                style: MTextStyles.mNormalStyle(
                  fontSize: 12.sp,
                )),
            const Icon(Icons.play_arrow_rounded, color: MColors.yellowishColor),
          ],
        )
      ],
    ).px(35.w);
  }
}
