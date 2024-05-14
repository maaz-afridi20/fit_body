import 'package:fit_body/Utils/constants/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => MHelperFunctions.navigateBack(context),
            child: Icon(Icons.arrow_back_ios,
                size: 15.sp, color: MColors.yellowishColor)),
        title: Text("Back",
            style: MTextStyles.mNormalStyle(
                fontSize: 15, color: MColors.yellowishColor)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(MTextString.fillprofile,
                  style: MTextStyles.mHeadingStyle(fontSize: 25)),
            ),
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.loremIpsum,
                    style: MTextStyles.mNormalStyle(),
                    textAlign: TextAlign.center)
                .px(35.w),
            //
            //! Profile image...
            MHelperFunctions.giveHeight(20.h),
            ResizableContainer(widgets: [
              MHelperFunctions.giveHeight(10.h),
              Center(child: Image.asset(MImageStrings.profile)),
              MHelperFunctions.giveHeight(10.h),
            ]),

            //! profile info...
            MHelperFunctions.giveHeight(20.h),
            const ProfileInfoForm()
          ],
        ),
      ),
    );
  }
}
