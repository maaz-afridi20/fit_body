import 'package:fit_body/Utils/constants/exports.dart';

class ChoicChipsRow extends StatelessWidget {
  const ChoicChipsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(children: [
          MHelperFunctions.mWidthBox(17),
          Text('Sort By',
              style: MTextStyles.mNormalStyle(
                  fontSize: 12.sp, color: MColors.yellowishColor)),
          MHelperFunctions.mWidthBox(17),
          const ChoiceChipsWidget(chipTitle: "All"),
          MHelperFunctions.mWidthBox(17.w),
          const ChoiceChipsWidget(chipTitle: "Video"),
          MHelperFunctions.mWidthBox(17),
          const ChoiceChipsWidget(chipTitle: "Articles")
        ]));
  }
}
