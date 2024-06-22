import '../../../../../../Utils/constants/exports.dart';

class ForumDetailsWidget extends StatelessWidget {
  const ForumDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: MColors.yellowishColor),
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                  horizontalTitleGap: 0,
                  titleTextStyle:
                      MTextStyles.mHeadingStyle(color: MColors.yellowishColor),
                  leading: CircleAvatar(
                      onBackgroundImageError: (exception, stackTrace) =>
                          'Some Error While Loading Image'.text.red800.make(),
                      radius: 35.r,
                      backgroundImage: const CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/634030/pexels-photo-634030.jpeg?auto=compress&cs=tinysrgb&w=600")),
                  title: const Text("Madison"),
                  trailing: const Icon(Icons.star_border_rounded,
                      color: MColors.yellowishColor)),
              MHelperFunctions.mHeightBox(17),
              Flexible(
                  child: Text(MTextString.loremIpsum,
                      style: MTextStyles.mNormalStyle(
                          color: MColors.yellowishColor))),
              MHelperFunctions.mHeightBox(17),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.star_rate_rounded,
                      color: MColors.darkPurpleColor, size: 18),
                  MHelperFunctions.mWidthBox(7),
                  Text('30,450',
                      style: MTextStyles.mNormalStyle(
                          color: MColors.yellowishColor))
                ]),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.mode_comment_rounded,
                      color: MColors.darkPurpleColor, size: 18),
                  MHelperFunctions.mWidthBox(7),
                  Text('12,450',
                      style: MTextStyles.mNormalStyle(
                          color: MColors.yellowishColor))
                ]),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.remove_red_eye_outlined,
                      color: MColors.darkPurpleColor, size: 18),
                  MHelperFunctions.mWidthBox(7),
                  Text('1320',
                      style: MTextStyles.mNormalStyle(
                          color: MColors.yellowishColor))
                ])
              ])
            ]).px(10).py(8))
        .py8();
  }
}
