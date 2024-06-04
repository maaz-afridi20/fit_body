import 'package:fit_body/AppComons/widgets/container/progress_tile_container.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class ProgressTracking extends StatelessWidget {
  const ProgressTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("My Progress",
            style: MTextStyles.mNormalStyle(
                color: MColors.yellowishColor, fontWeight: FontWeight.w500)),
        8.heightBox,
        Text("My Progress",
            style: MTextStyles.mHeadingStyle(
                fontSize: 24.sp,
                color: MColors.yellowishColor,
                fontWeight: FontWeight.w600)),
        //
        //! bar chart...
        20.heightBox,
        const BarChartt(),
        35.heightBox,
        const MProgressTileContainer(
            day: 'Mon', date: '15', duration: '1hr2m', steps: '3,622'),
        const MProgressTileContainer(
            day: 'Tue', date: '16', duration: '2hr', steps: '5000'),
        const MProgressTileContainer(
            day: 'Wed', date: '17', duration: '50m', steps: '430')
      ]).px(35),
    );
  }
}
