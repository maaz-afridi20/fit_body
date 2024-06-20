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

extension WidgetExtensions on Widget {
  Widget wrapWithSingleChildScrollView({Axis? scrollDirection}) {
    return SingleChildScrollView(
        scrollDirection: scrollDirection ?? Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: this);
  }
}

extension ExpandWidgetExtension on Widget {
  Widget wrapWithExpanded() {
    return Expanded(child: this);
  }
}
