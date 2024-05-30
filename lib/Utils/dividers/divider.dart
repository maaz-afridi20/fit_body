import 'package:fit_body/Utils/constants/exports.dart';

class MDivider extends StatelessWidget {
  const MDivider({super.key, this.lineColor});
  final Color? lineColor;

  @override
  Widget build(BuildContext context) {
    return Divider(color: lineColor ?? MColors.yellowishColor, thickness: 2);
  }
}
