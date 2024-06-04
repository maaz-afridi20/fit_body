import '../../../../../Utils/constants/exports.dart';

class PersonalDetailsInProgressScreen extends StatelessWidget {
  const PersonalDetailsInProgressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding:
            EdgeInsets.only(left: 30.w, right: 20.w, top: 10, bottom: 10),
        widgets: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Madison', style: MTextStyles.mHeadingStyle(fontSize: 24)),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Age: ",
                    style: MTextStyles.mNormalStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "28",
                    style: MTextStyles.mNormalStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.normal))
              ])),
              20.heightBox,
              Row(
                children: [
                  StraightVerticleLine(
                      height: 35.h,
                      color: MColors.yellowishColor,
                      width: 8,
                      radius: 6.r),
                  6.widthBox,
                  Column(
                    children: [
                      Text('75 KG',
                          style: MTextStyles.mNormalStyle(
                              fontWeight: FontWeight.w600)),
                      Text('Weight', style: MTextStyles.mNormalStyle())
                    ],
                  ),
                  40.widthBox,
                  StraightVerticleLine(
                      height: 35.h,
                      color: MColors.yellowishColor,
                      width: 8,
                      radius: 6.r),
                  6.widthBox,
                  Column(
                    children: [
                      Text('1.65 CM',
                          style: MTextStyles.mNormalStyle(
                              fontWeight: FontWeight.w600)),
                      Text('Height', style: MTextStyles.mNormalStyle())
                    ],
                  ),
                ],
              )
            ]),
            CircleAvatar(
                onBackgroundImageError: (exception, stackTrace) =>
                    'Some Error While Loading Image'.text.red800.make(),
                radius: 80.r,
                backgroundImage: const CachedNetworkImageProvider(
                    "https://images.pexels.com/photos/634030/pexels-photo-634030.jpeg?auto=compress&cs=tinysrgb&w=600"))
          ])
        ]);
  }
}
