import 'package:fit_body/Utils/constants/exports.dart';

class ChoicChipsRow extends StatelessWidget {
  const ChoicChipsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          MHelperFunctions.giveWidth(17.w),
          Text('Sort By',
              style: MTextStyles.mNormalStyle(
                  fontSize: 12.sp, color: MColors.yellowishColor)),
          MHelperFunctions.giveWidth(17.w),
          const ChoiceChipsWidget(chipTitle: "All"),
          MHelperFunctions.giveWidth(17.w),
          const ChoiceChipsWidget(chipTitle: "Video"),
          MHelperFunctions.giveWidth(17.w),
          const ChoiceChipsWidget(chipTitle: "Articles"),
        ],
      ),
    );
  }
}
