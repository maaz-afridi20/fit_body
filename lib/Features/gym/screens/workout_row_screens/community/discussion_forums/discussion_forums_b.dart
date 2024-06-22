import 'package:fit_body/Utils/constants/exports.dart';

class DiscussionForumsB extends StatelessWidget {
  const DiscussionForumsB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MAppbar(showActionWidget: true, appbarTitle: "Community"),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Forums',
              style: MTextStyles.mHeadingStyle(
                  color: MColors.yellowishColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),
          //
          //! forum details....
          ...List.generate(4, (index) => const ForumDetailsWidget()),
        ]).px32().wrapWithSingleChildScrollView());
  }
}
