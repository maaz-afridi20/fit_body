import 'package:fit_body/Utils/constants/exports.dart';

class ResizableContainer extends StatelessWidget {
  const ResizableContainer(
      {super.key, required this.widgets, this.applyWidgetPadding});

  final List<Widget> widgets;
  final EdgeInsetsGeometry? applyWidgetPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: MColors.purpleColor,
        child: Padding(
          padding: applyWidgetPadding ?? EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          ),
        ));
  }
}
