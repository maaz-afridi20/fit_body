import 'package:fit_body/Utils/constants/exports.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(appbarTitle: "Settings"),
      body: Column(
        children: [
          50.heightBox,
          Text('How Can We Help You?',
              style: MTextStyles.mHeadingStyle(fontWeight: FontWeight.w500)),
          //
          //! chip row
          14.heightBox,
          const HelpChipRow(),
        ],
      ).px(35.w),
    );
  }
}
