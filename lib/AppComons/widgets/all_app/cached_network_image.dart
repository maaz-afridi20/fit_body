import 'package:fit_body/Utils/constants/exports.dart';

class MCachedNetworkImage extends StatelessWidget {
  const MCachedNetworkImage(
      {super.key, required this.imageUrl, this.placeHolder});

  final String imageUrl;
  final Widget Function(BuildContext, String)? placeHolder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: placeHolder ??
          (context, url) => const Center(child: CircularProgressIndicator()),
      fit: BoxFit.fitWidth,
      errorWidget: (context, url, error) => "Error Loading Image"
          .text
          .red500
          .fontWeight(FontWeight.w700)
          .size(14.sp)
          .makeCentered(),
    );
  }
}
