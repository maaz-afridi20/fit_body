import 'package:fit_body/Utils/constants/exports.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: listTileData.length,
          itemBuilder: (context, index) {
            final item = listTileData[index];
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
              trailing:
                  const Icon(Icons.expand_more, color: MColors.yellowishColor),
              title: Text(item['text'],
                  style: MTextStyles.mNormalStyle(fontSize: 18.sp)),
              onTap: () => handleOnTap(context, listTileData[index]['text']),
            );
          },
        )
      ],
    );
  }

  final List<Map<String, dynamic>> listTileData = [
    {'text': 'Customer Service', 'icon': Iconsax.user},
    {'text': 'Website', 'icon': Icons.web},
    {'text': 'Whatsapp', 'icon': Iconsax.whatsapp},
    {'text': 'Facebook', 'icon': Iconsax.facebook},
    {'text': 'Instagram', 'icon': Iconsax.instagram},
  ];

  void handleOnTap(BuildContext context, String title) {
    switch (title) {
      case "Customer Service":
        MHelperFunctions.launchUlr('https://www.investopedia.com/');
        debugPrint('customer service tapped');
        break;
      case "Website":
        MHelperFunctions.launchUlr('https://flutter.dev');
        debugPrint('website tapped');
        break;
      case "Whatsapp":
        MHelperFunctions.launchUlr('https://www.whatsapp.com/');
        debugPrint('whatsapp tapped');
        break;
      case "Facebook":
        MHelperFunctions.launchUlr('https://web.facebook.com/');
        debugPrint('faceboo tapped');
        break;
      case "Instagram":
        MHelperFunctions.launchUlr('https://instagram.com/');
        debugPrint('insta tapped');
        break;
    }
  }
}
