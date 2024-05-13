import 'package:fit_body/Utils/constants/exports.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back_ios,
                color: MColors.yellowishColor)),
        title: Text(MTextString.setpass,
            style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          MHelperFunctions.giveHeight(30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Text(MTextString.loremIpsum,
                style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
          ),
          MHelperFunctions.giveHeight(39.h),
          //
          //! form...
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 45.w),
              widgets: [
                MHelperFunctions.giveHeight(25.h),
                Text(MTextString.password,
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w500,
                        color: MColors.balckColor)),
                MHelperFunctions.giveHeight(9.h),
                MTextField(hintText: MTextString.starss),
                MHelperFunctions.giveHeight(13.h),
                Text(MTextString.confirmpassword,
                    style: MTextStyles.mHeadingStyle(
                        fontWeight: FontWeight.w500,
                        color: MColors.balckColor)),
                MHelperFunctions.giveHeight(9.h),
                MTextField(hintText: MTextString.starss),
                MHelperFunctions.giveHeight(35.h),
              ]),
          //
          //! reset pass text.
          MHelperFunctions.giveHeight(45.h),
          GlassyEffectElevatedBtn(btnText: MTextString.resetpass),
        ],
      ),
    );
  }
}
