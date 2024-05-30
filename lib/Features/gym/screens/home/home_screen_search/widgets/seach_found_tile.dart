import '../../../../../../Utils/constants/exports.dart';

class SearchFoundTileWidget extends StatelessWidget {
  const SearchFoundTileWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Container(
        height: 45.h,
        width: 45.w,
        decoration: const BoxDecoration(
            color: MColors.yellowishColor, shape: BoxShape.circle),
        child: Icon(Icons.search, color: MColors.darkPurpleColor, size: 29.sp),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.r)),
      title: title.text.size(13).color(MColors.balckColor).make(),
    );
  }
}
