import '../../../Utils/constants/exports.dart';

class UserBodyInfoRowContainer extends StatelessWidget {
  const UserBodyInfoRowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 275,
      child: Container(
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
            color: MColors.darkPurpleColor,
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('75 Kg',
                  style: MTextStyles.mNormalStyle(
                      fontSize: 15.sp, fontWeight: FontWeight.w500)),
              Text('Weight', style: MTextStyles.mNormalStyle())
            ]),
            //
            //! straight line
            StraightVerticleLine(height: 41.h),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('28',
                  style: MTextStyles.mNormalStyle(
                      fontSize: 15.sp, fontWeight: FontWeight.w500)),
              Text('Years Old', style: MTextStyles.mNormalStyle())
            ]),
            StraightVerticleLine(height: 41.h),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('1.65 Cm',
                  style: MTextStyles.mNormalStyle(
                      fontSize: 15.sp, fontWeight: FontWeight.w500)),
              Text('Height', style: MTextStyles.mNormalStyle())
            ]),
          ],
        ),
      ).px(40),
    );
  }
}
