import 'package:fit_body/Utils/constants/exports.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ResizableContainer(widgets: [
            100.heightBox,
          ])
        ],
      ),
    );
  }
}
