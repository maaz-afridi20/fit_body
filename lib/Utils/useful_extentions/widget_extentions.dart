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
  Widget wrapWithSingleChildScrollView() {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(), child: this);
  }
}

// extension ContainerRadiusExtenson on Container {
//   Container giveBorderRadius(BorderRadius borderRadius) {
//     // checking the existing boxdecoration
//     final BoxDecoration? existingBoxdecoration = decoration as BoxDecoration?;

//     final Color? existingColor = existingBoxdecoration?.color ?? color;

//     final BoxDecoration newDecoration = existingBoxdecoration?.copyWith(
//             borderRadius: borderRadius, color: existingColor) ??
//         BoxDecoration(borderRadius: borderRadius, color: existingColor);

//     return Container(
//       key: key,
//       alignment: alignment,
//       padding: padding,
//       decoration: newDecoration,
//       foregroundDecoration: foregroundDecoration,
//       constraints: constraints,
//       margin: margin,
//       transform: transform,
//       transformAlignment: transformAlignment,
//       child: child,
//     );
//   }
// }
