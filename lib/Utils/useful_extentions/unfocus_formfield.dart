import 'package:fit_body/Utils/constants/exports.dart';

extension ScaffoldExtension on Scaffold {
  Widget withUnfocusGestureDetector(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: this);
  }
}
