import 'package:fit_body/Utils/constants/exports.dart';

class LinerInContainer extends StatelessWidget {
  const LinerInContainer({super.key, required this.direction});

  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: direction == Axis.vertical ? buildColumn() : buildRow());
  }

  Widget buildColumn() {
    return Column(
      children: [
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
              Color lineColor =
                  (index % 5 == 0) ? MColors.yellowishColor : Colors.white;
              return Container(
                  height: 2.h,
                  width: lineWidth,
                  decoration: BoxDecoration(color: lineColor));
            }),
          ),
        ),
      ],
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MHelperFunctions.screenWidth(),
          height: 80.h,
          decoration: BoxDecoration(
              color: MColors.purpleColor,
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(20, (index) {
              double lineHeight = (index % 5 == 0) ? 50.w : 25.w;
              Color lineColor =
                  (index % 5 == 0) ? MColors.yellowishColor : Colors.white;
              return Container(
                  height: lineHeight,
                  width: 2,
                  decoration: BoxDecoration(color: lineColor));
            }),
          ),
        ),
      ],
    );
  }
}
