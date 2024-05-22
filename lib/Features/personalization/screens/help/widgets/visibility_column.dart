import 'package:fit_body/Features/personalization/screens/help/widgets/contact_us/contact_us.dart';
import 'package:fit_body/Features/personalization/screens/help/widgets/faqs/all_faqs_visibility_tile.dart';

import '../../../../../Utils/constants/exports.dart';

class VisibilityColumn extends StatelessWidget {
  const VisibilityColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpChipController());
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Obx(() {
            return Column(
              children: [
                Visibility(
                    visible: controller.selectedChips.contains("FAQ"),
                    child: const AllVisibilityFaqsTile()),
                Visibility(
                    visible: controller.selectedChips.contains("Account"),
                    child:
                        Container(height: 40, width: 100, color: Colors.red)),
                Visibility(
                    visible: controller.selectedChips.contains("General"),
                    child:
                        Container(height: 40, width: 100, color: Colors.blue)),
                Visibility(
                  visible: controller.selectedChips.contains("Contact Us"),
                  child: ContactUs(),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
