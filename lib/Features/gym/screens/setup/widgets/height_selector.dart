import '../../../../../Utils/constants/exports.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HeightSelectController controller = Get.put(HeightSelectController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300.h,
          width: 100.w,
          child: ListWheelScrollView(
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: (value) =>
                  controller.updateSelectedHeight(value + 1),
              overAndUnderCenterOpacity: 0.5,
              magnification: 1.4,
              diameterRatio: 0.9,
              itemExtent: 50,
              children: List.generate(
                  250,
                  (index) => Center(
                      child: Text('${index + 1}',
                          style: MTextStyles.mHeadingStyle(fontSize: 40.sp))))),
        ),
        MHelperFunctions.giveWidth(5.w),
        Container(
          width: 80.w,
          height: 300.h,
          decoration: BoxDecoration(
              color: MColors.purpleColor,
              borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(20, (index) {
              double lineWidth = (index % 5 == 0) ? 46.w : 25.w;
              return Container(
                  height: 2.h,
                  width: lineWidth,
                  decoration: const BoxDecoration(color: Colors.white));
            }),
          ),
        ),
      ],
    );
  }
}
