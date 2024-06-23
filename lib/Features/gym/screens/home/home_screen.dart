import 'package:fit_body/Utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) => MHelperFunctions.showAppExitDialogue(context),
        child: const Scaffold(
          bottomNavigationBar: NavBarWidget(),
        ),
      ),
    );
  }
}
