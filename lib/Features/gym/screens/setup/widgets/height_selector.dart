import '../../../../../Utils/constants/exports.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeightWeightSelectController());
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
              itemExtent: 80,
              children: List.generate(
                  250,
                  (index) => Center(
                      child: Text('${index + 1}',
                          style: MTextStyles.mHeadingStyle(fontSize: 40.sp))))),
        ),
        MHelperFunctions.giveWidth(5.w),
        const LinerInContainer(direction: Axis.vertical)
      ],
    );
  }
}
