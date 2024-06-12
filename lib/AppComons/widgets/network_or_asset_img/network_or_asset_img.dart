import 'package:fit_body/Utils/constants/exports.dart';

Widget getImageWidget(String img,
    {BoxFit? fit, Widget Function(BuildContext, String)? placeHolder}) {
  if (img.startsWith('http') || img.startsWith('https')) {
    return SizedBox(
      width: double.infinity,
      child: MCachedNetworkImage(
          imageUrl: img, placeHolder: placeHolder, fit: fit),
    );
  } else {
    return Image.asset(img, fit: fit);
  }
}
