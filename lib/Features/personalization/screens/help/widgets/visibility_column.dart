import '../../../../../Utils/constants/exports.dart';

class VisibilityColumn extends StatelessWidget {
  const VisibilityColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpChipController());
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
                visible: controller.selectedChips.contains("FAQ"),
                child: const AllVisibilityFaqsTile()),
            Visibility(
              visible: controller.selectedChips.contains("Contact Us"),
              child: const ContactUs(),
            )
          ],
        );
      }),
    );
  }
}


  // Visibility(
  //               visible: controller.selectedChips.contains("Account"),
  //               child: Container(height: 40, width: 100, color: Colors.red)),
  //           Visibility(
  //               visible: controller.selectedChips.contains("General"),
  //               child: Container(height: 40, width: 100, color: Colors.blue)),