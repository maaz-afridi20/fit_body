import 'package:fit_body/Utils/constants/exports.dart';

class MealPlansExampleLoading extends StatelessWidget {
  const MealPlansExampleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      MHelperFunctions.navigateBack(context);
      MHelperFunctions.showSnackBar("Recipie Saved Successfully");
    });
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          const CircularProgressIndicator(),
          "Loading...".text.white.make()
        ])));
  }
}
