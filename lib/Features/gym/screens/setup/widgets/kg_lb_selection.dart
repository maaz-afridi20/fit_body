import 'package:fit_body/Utils/constants/exports.dart';

class KgLbSelection extends StatelessWidget {
  const KgLbSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58.h,
      decoration: BoxDecoration(
          color: MColors.yellowishColor,
          borderRadius: BorderRadius.circular(14.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('KG'),
          StraightVerticleLine(height: 41.h, color: MColors.balckColor),
          const Text('LB')
        ],
      ),
    );
  }
}
