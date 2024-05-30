import '../../../Utils/constants/exports.dart';

class StraightVerticleLine extends StatelessWidget {
  const StraightVerticleLine(
      {super.key, required this.height, this.color, this.width, this.radius});

  final double height;
  final Color? color;
  final double? width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width ?? 3.w,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(radius ?? 0)));
  }
}
