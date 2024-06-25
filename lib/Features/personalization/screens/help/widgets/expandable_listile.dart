import 'package:fit_body/Utils/constants/exports.dart';

class MExpandableListile extends StatelessWidget {
  const MExpandableListile(
      {super.key, required this.title, required this.expandedText});

  final String title;
  final String expandedText;

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put(HelpChipController(), tag: UniqueKey().toString());
    return Obx(() => Column(children: [
          ListTile(
              title: Text(title,
                  textAlign: TextAlign.start,
                  style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
              trailing: IconButton(
                icon: Icon(
                  controller.isListileTextVisible.value
                      ? Icons.expand_less
                      : Icons.expand_more,
                ),
                onPressed: controller.listileTextToggle,
              )),
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: controller.isListileTextVisible.value
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child:
                          Text(expandedText, style: MTextStyles.mNormalStyle()))
                  : SizedBox.shrink(
                      key: ValueKey(controller.isListileTextVisible.value)))
        ]));
  }
}
