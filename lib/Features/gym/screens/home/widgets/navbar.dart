import 'package:fit_body/Utils/constants/exports.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return Scaffold(
      body: Obx(() => controller.screenList[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: MColors.yellowishColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            backgroundColor: MColors.purpleColor,
            onTap: (value) {
              controller.changeIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: MColors.purpleColor,
                  icon: Icon(Icons.home, size: 27.w),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: MColors.purpleColor,
                  icon: Icon(Icons.description_sharp, size: 27.w),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: MColors.purpleColor,
                  icon: Icon(Icons.star_rounded, size: 27.w),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: MColors.purpleColor,
                  icon: Icon(Icons.person_rounded, size: 27.w),
                  label: ""),
            ]),
      ),
    );
  }
}

//  bottomNavigationBar: const NavBarWidget(),
