import 'package:fit_body/Utils/constants/exports.dart';

class CheckYourCustomRoutine extends StatelessWidget {
  const CheckYourCustomRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MAppbar(showActionWidget: true, appbarTitle: "Your Routine"),
    );
  }
}
