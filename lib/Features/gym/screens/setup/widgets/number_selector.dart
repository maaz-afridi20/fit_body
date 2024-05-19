import 'package:fit_body/Utils/constants/exports.dart';

class NumberSelector extends StatelessWidget {
  const NumberSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SetupAgeController());
    return SizedBox(
      width: MHelperFunctions.screenWidth(),
      height: 80,
      child: RotatedBox(
        quarterTurns: 1,
        child: ListWheelScrollView(
            physics: const FixedExtentScrollPhysics(),
            itemExtent: 80,
            onSelectedItemChanged: (value) => controller.updateAge(value + 1),
            overAndUnderCenterOpacity: 0.5,
            magnification: 1.4,
            children: List.generate(100, (index) {
              return SizedBox(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text('${index + 1}',
                      style: MTextStyles.mHeadingStyle(fontSize: 40.sp)),
                ),
              );
            })),
      ),
    );
  }
}


// ListView.builder(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               controller: scrollController,
//               itemCount: controller.itemCount.value,
//               itemBuilder: (context, index) {
//                 final isSelected = controller.selectedNumber.value == index;
//                 return Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.only(left: 35.w),
//                   child: Text(
//                     "$index",
//                     style: MTextStyles.mHeadingStyle(
//                         fontSize: isSelected ? 40.sp : 35.sp,
//                         color: isSelected ? MColors.balckColor : Colors.white),
//                   ),
//                 );
//               },
//             ),