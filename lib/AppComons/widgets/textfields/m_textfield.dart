import 'package:fit_body/Utils/constants/exports.dart';

class MTextField extends StatelessWidget {
  const MTextField({super.key, required this.hintText, this.keyboardInputType});

  final String hintText;
  final TextInputType? keyboardInputType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: TextFormField(
          textAlign: TextAlign.left,
          keyboardType: keyboardInputType,
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: MColors.balckColor, fontSize: 16.sp),
              fillColor: Colors.white,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r)))),
    );
  }
}
