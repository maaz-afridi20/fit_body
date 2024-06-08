import '../../../../../../Utils/constants/exports.dart';

class AllSearchScreenImgAndTextWidget extends StatelessWidget {
  const AllSearchScreenImgAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const RowContainerWithImageAndDetails(
          imageString:
              'https://images.pexels.com/photos/863926/pexels-photo-863926.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          title: 'Circuit Training',
          details: [
            {'icon': Icons.alarm, 'text': '50 Minutes'},
            {'icon': Icons.fire_extinguisher, 'text': '1330 KCal'},
            {'icon': Icons.run_circle_rounded, 'text': '5 Exercise'}
          ]),
      17.heightBox,
      const RowContainerWithImageAndDetails(
          imageString:
              'https://images.pexels.com/photos/6823339/pexels-photo-6823339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          title: 'Delight With Greek Yougurt',
          details: [
            {'icon': Icons.alarm, 'text': '50 Minutes'},
            {'icon': Icons.fire_extinguisher, 'text': '1330 KCal'},
            {'icon': Icons.run_circle_rounded, 'text': '5 Exercise'}
          ]),
      17.heightBox,
      const RowContainerWithImageAndDetails(
          imageString:
              "https://images.pexels.com/photos/2780762/pexels-photo-2780762.jpeg?auto=compress&cs=tinysrgb&w=600",
          title: "Split Strength Training",
          details: [
            {'icon': Icons.alarm, 'text': '12 Minutes'},
            {'icon': Icons.fire_extinguisher, 'text': '1250 KCal'},
            {'icon': Icons.run_circle_rounded, 'text': 'Exercise'}
          ])
    ]);
  }
}
