import 'package:fit_body/Utils/constants/exports.dart';

class WorkOutRow extends StatelessWidget {
  const WorkOutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        columnWithImgAndText(MImageStrings.dumble, "WorkOut"),
        const SmallLine(),
        columnWithImgAndText(MImageStrings.nutrituion, "Nutrition"),
        const SmallLine(),
        columnWithImgAndText(MImageStrings.community, "Community"),
      ],
    );
  }

  Widget columnWithImgAndText(String img, String text) {
    return Column(
      children: [
        // Image.asset(img),
        getImageWidget(img),
        MHelperFunctions.giveHeight(6.h),
        Text(text,
            style: MTextStyles.mNormalStyle(color: MColors.yellowishColor))
      ],
    );
  }

  Widget getImageWidget(String img) {
    if (img.startsWith('http') || img.startsWith('https')) {
      return CachedNetworkImage(imageUrl: img);
    } else {
      return Image.asset(img);
    }
  }
}
