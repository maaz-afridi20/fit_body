import 'package:fit_body/Utils/constants/exports.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MAppbar(appbarTitle: "Settings", showActionWidget: false),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('How Can We Help You?',
                  style:
                      MTextStyles.mHeadingStyle(fontWeight: FontWeight.w500)),
              //
              //! chip row
              14.heightBox,
              const HelpChipRow(),
              //
              //! Text Field
              15.heightBox,
              const MTextField(hintText: "Search"),
              32.heightBox,
              const VisibilityColumn(),
            ],
          ).px(35.w),
        ));
  }
}
