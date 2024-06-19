import 'package:fit_body/Utils/constants/exports.dart';

class GlassyEffectElevatedBtn extends StatelessWidget {
  const GlassyEffectElevatedBtn(
      {super.key, required this.btnText, this.onPress});

  final String btnText;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3), // Adjust opacity as needed
        borderRadius:
            BorderRadius.circular(20), // Adjust border radius as needed
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color
            blurRadius: 10, // Adjust blur radius as needed
            spreadRadius: 2, // Adjust spread radius as needed
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Make button transparent
            elevation: 0, // Remove button elevation
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(width: 0.7, color: Colors.white))),
        onPressed: onPress,
        child: Text(
          btnText,
          style: MTextStyles.mHeadingStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}
