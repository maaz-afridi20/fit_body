import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressTracking extends StatelessWidget {
  const ProgressTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("My Progress",
          style: MTextStyles.mNormalStyle(
              color: MColors.yellowishColor, fontWeight: FontWeight.w500)),
      8.heightBox,
      Text("My Progress",
          style: MTextStyles.mHeadingStyle(
              fontSize: 24.sp,
              color: MColors.yellowishColor,
              fontWeight: FontWeight.w600)),
      20.heightBox,
      Container(
        height: 290.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Colors.white, width: 1.5)),
        child: BarChart(BarChartData(
          gridData: const FlGridData(show: false),
          maxY: 450,
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(),
            topTitles: const AxisTitles(),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final style = MTextStyles.mNormalStyle(
                    fontSize: 13.sp, color: MColors.yellowishColor);
                switch (value.toInt()) {
                  case 0:
                    return Text('Jan', style: style);
                  case 1:
                    return Text('Feb', style: style);
                  case 2:
                    return Text('Mar', style: style);
                  case 3:
                    return Text('April', style: style);
                  case 4:
                    return Text('May', style: style);
                  default:
                    return Text('', style: style);
                }
              },
            )),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
              interval: 100,
              reservedSize: 35,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final style = MTextStyles.mNormalStyle(
                    fontSize: 13.sp, color: MColors.yellowishColor);
                return Text('${value.toInt()}', style: style);
              },
            )),
          ),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(toY: 5, color: MColors.yellowishColor, width: 16)
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 6, color: MColors.yellowishColor, width: 16)
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 2, color: MColors.yellowishColor, width: 16)
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(toY: 9, color: MColors.yellowishColor, width: 16)
            ])
          ],
          borderData: FlBorderData(show: false),
        )),
      )
    ]).px(35);
  }
}
