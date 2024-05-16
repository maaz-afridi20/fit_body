import '../../../Utils/constants/exports.dart';

class StraightVerticleLine extends StatelessWidget {
  const StraightVerticleLine({super.key, required this.height, this.color});

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: 3.w,
        decoration: BoxDecoration(color: color ?? Colors.white));
  }
}
