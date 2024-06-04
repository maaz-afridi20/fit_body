import 'package:fit_body/Utils/constants/exports.dart';

class BarChartt extends StatelessWidget {
  const BarChartt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 5.w, top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white, width: 1.5)),
      child: BarChart(BarChartData(
        gridData: const FlGridData(show: false),
        maxY: 10,
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
              axisNameWidget: Text('Steps',
                  style: MTextStyles.mNormalStyle(
                      fontSize: 13.sp, color: MColors.yellowishColor)),
              axisNameSize: 25,
              sideTitles: SideTitles(
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
    );
  }
}
