import '../../../../../../Utils/constants/exports.dart';

class BackgroundImageWithFilter extends StatelessWidget {
  const BackgroundImageWithFilter({super.key, required this.backgroundImage});

  final ImageProvider backgroundImage;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        MColors.balckColor.withOpacity(0.6),
        BlendMode.srcOver,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
