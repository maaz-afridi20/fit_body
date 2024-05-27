import 'package:fit_body/Utils/constants/exports.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationShowingTabbarController controller =
        Get.put(NotificationShowingTabbarController());
    return Scaffold(
      appBar: const MAppbar(appbarTitle: 'Progress Screen'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: TabBar(
                  dividerColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: false,
                  labelColor: MColors.balckColor,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: MColors.darkPurpleColor,
                  controller: controller.tabController,
                  tabs: const [
                    // Tab(text: "Places"),
                    // Tab(text: "inspiration"),
                    // Tab(text: "patani")

                    MCircularContainer(titleText: 'first'),
                    MCircularContainer(titleText: 'second'),
                    MCircularContainer(titleText: 'third'),
                  ]),
            ),
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: TabBarView(
                  controller: controller.tabController,
                  children: const [
                    Text("first", style: TextStyle(color: Colors.white)),
                    // NotificationScreen(),
                    Text("second", style: TextStyle(color: Colors.white)),
                    Text("third", style: TextStyle(color: Colors.white)),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
