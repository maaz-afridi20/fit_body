import '../../../../../../Utils/constants/exports.dart';

class ForumTitlesWidget extends StatelessWidget {
  const ForumTitlesWidget({
    super.key,
    required this.forumTitle,
    required this.forumSubtitle,
    required this.forumTime,
    this.onTap,
  });

  final String forumTitle;
  final String forumSubtitle;
  final String forumTime;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Flexible(
            child: Text(forumTitle,
                style: MTextStyles.mNormalStyle(fontWeight: FontWeight.w600))),
        MHelperFunctions.mWidthBox(20),
        GestureDetector(
            onTap: onTap,
            child: Text("See All",
                style: MTextStyles.mNormalStyle(fontWeight: FontWeight.w600)))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Flexible(
            child: Text(forumSubtitle,
                style: MTextStyles.mNormalStyle(fontSize: 13.sp))),
        MHelperFunctions.mWidthBox(20),
        Text(forumTime, style: MTextStyles.mNormalStyle(fontSize: 13.sp))
      ]),
      MHelperFunctions.mHeightBox(5),
      const MDivider(),
    ]);
  }
}
