import 'package:fit_body/Utils/constants/exports.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoadingWebsiteContoller());
    return Obx(() => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listTileData.length,
                    itemBuilder: (context, index) {
                      final item = controller.listTileData[index];
                      return ListTile(
                        leading: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              color: MColors.darkPurpleColor,
                              borderRadius: BorderRadius.circular(40.sp)),
                          child: Center(
                            child: Icon(item['icon'], color: Colors.white),
                          ),
                        ),
                        trailing: const Icon(Icons.expand_more,
                            color: MColors.yellowishColor),
                        title: Text(item['text'],
                            style: MTextStyles.mNormalStyle(fontSize: 18.sp)),
                        onTap: () => controller.handleOnTap(
                            context, controller.listTileData[index]['text']),
                      );
                    },
                  ),
          ],
        ));
  }
}
