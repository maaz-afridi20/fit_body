import 'package:fit_body/Utils/constants/exports.dart';

class GeneralShimmer extends StatelessWidget {
  const GeneralShimmer({super.key, this.width, this.height, this.child});

  final double? height, width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
          height: height ?? 200,
          // width: width ?? 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
          child: child,
        ));
  }
}
