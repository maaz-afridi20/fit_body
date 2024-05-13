import 'package:fit_body/Utils/constants/exports.dart';

class NumberSelector extends StatelessWidget {
  const NumberSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final RxInt selectedNumber = 0.obs;
    const int itemCount = 100;
    final ScrollController controller = ScrollController();
    int centerIndex = (itemCount ~/ 2).toInt();
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          final isSelected = selectedNumber.value == centerIndex;
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 35.w),
            child: Text(
              "$index",
              style: MTextStyles.mHeadingStyle(
                  fontSize: isSelected ? 40.sp : 35.sp,
                  color: isSelected ? MColors.balckColor : Colors.white),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:fit_body/Utils/constants/exports.dart';

// class NumberSelector extends StatelessWidget {
//   const NumberSelector({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final RxInt selectedNumber = 0.obs;

//     final ScrollController scrollController = ScrollController();

//     void updateSelectedIndex() {
//       final viewportWidth = MediaQuery.of(context).size.width;
//       final centerOffset = viewportWidth / 2;

//       double minDistance = double.infinity;
//       int selectedIndex = 0;

//       for (int i = 0; i < 100; i++) {
//         final itemOffset = i * 35.w; // width of each item
//         final distance =
//             (itemOffset + 17.5.w - centerOffset).abs(); // center of item

//         if (distance < minDistance) {
//           minDistance = distance;
//           selectedIndex = i;
//         }
//       }

//       selectedNumber.value = selectedIndex;
//     }

//     scrollController.addListener(() {
//       updateSelectedIndex();
//     });

//     return SizedBox(
//       height: 80.h,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         physics: const BouncingScrollPhysics(),
//         controller: scrollController,
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           final isSelected = selectedNumber.value == index;
//           return Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(left: 35.w),
//             child: Text(
//               '$index',
//               style: TextStyle(
//                 fontSize: isSelected ? 40.sp : 35.sp,
//                 color: isSelected ? Colors.black : Colors.white,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
