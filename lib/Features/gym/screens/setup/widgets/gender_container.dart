import 'package:fit_body/Utils/constants/exports.dart';

class MGenderContainer extends StatelessWidget {
  const MGenderContainer(
      {super.key,
      required this.backgroundColor,
      required this.backgroundImage,
      this.borderWidth});

  final Color backgroundColor;
  final ImageProvider backgroundImage;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 160.w,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.white,
            width: borderWidth ?? 0,
          )),
      child: Center(
        child: Image(image: backgroundImage),
      ),
    );
  }
}
