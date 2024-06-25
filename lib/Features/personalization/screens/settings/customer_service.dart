import 'package:fit_body/Utils/constants/exports.dart';

class CustomerService extends StatelessWidget {
  const CustomerService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(
          showActionWidget: false, appbarTitle: "Customer Service"),
      body: Column(children: <Widget>[
        MHelperFunctions.mHeightBox(25),
        Text("Hello! i'm here to assis you",
                style: MTextStyles.mNormalStyle(fontSize: 16))
            .centered(),
        MHelperFunctions.mHeightBox(25),
        const MDivider(),
        MHelperFunctions.mHeightBox(15),
        ListTile(
          title: const Text('How can we help you?'),
          subtitle: const Align(
              alignment: Alignment.centerLeft, child: Text("Support")),
          trailing: const Icon(Icons.play_arrow_outlined,
              size: 16, color: MColors.yellowishColor),
          titleTextStyle: MTextStyles.mNormalStyle(),
          subtitleTextStyle: MTextStyles.mNormalStyle(fontSize: 12),
          onTap: () =>
              MHelperFunctions.navigateTo(context, const TalkingAssistant()),
        ),
        MHelperFunctions.mHeightBox(15),
        const MDivider(),
        MHelperFunctions.mHeightBox(15),
        ListTile(
          title: const Text('Help Center?'),
          subtitle: const Align(
              alignment: Alignment.centerLeft, child: Text("General Info")),
          trailing: const Icon(Icons.play_arrow_outlined,
              size: 16, color: MColors.yellowishColor),
          titleTextStyle: MTextStyles.mNormalStyle(),
          subtitleTextStyle: MTextStyles.mNormalStyle(fontSize: 12),
        ),
        const MDivider(),
        MHelperFunctions.mHeightBox(15)
      ]).wrapWithSingleChildScrollView().px32(),
    );
  }
}
