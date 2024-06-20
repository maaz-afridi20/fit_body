import 'package:fit_body/Utils/constants/exports.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MColors.balckColor,
        appBar: const MAppbar(
            centerTitle: true,
            appbarTitle: "Set Password",
            titleColor: MColors.yellowishColor,
            showActionWidget: false),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MHelperFunctions.mHeightBox(30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)),
          MHelperFunctions.mHeightBox(39),
          //
          //! form...
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 45.w),
              widgets: [
                MHelperFunctions.mHeightBox(25),
                Text(MTextString.password,
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w500,
                        color: MColors.balckColor)),
                MHelperFunctions.mHeightBox(9),
                MTextField(hintText: MTextString.starss),
                MHelperFunctions.mHeightBox(13),
                Text(MTextString.confirmpassword,
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w500,
                        color: MColors.balckColor)),
                MHelperFunctions.mHeightBox(9),
                MTextField(hintText: MTextString.starss),
                MHelperFunctions.mHeightBox(35)
              ]),
          //
          //! reset pass text.
          MHelperFunctions.mHeightBox(45),
          GlassyEffectElevatedBtn(btnText: MTextString.resetpass)
        ]));
  }
}
