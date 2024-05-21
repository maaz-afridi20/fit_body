import 'package:fit_body/Utils/constants/exports.dart';

Widget getImageWidget(String img,
    {BoxFit? fit, Widget Function(BuildContext, String)? placeHolder}) {
  if (img.startsWith('http') || img.startsWith('https')) {
    return MCachedNetworkImage(imageUrl: img, placeHolder: placeHolder);
  } else {
    return Image.asset(img, fit: fit);
  }
}
