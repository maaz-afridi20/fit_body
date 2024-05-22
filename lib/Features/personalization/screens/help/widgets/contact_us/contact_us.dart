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
            );
          },
        )
      ],
    );
  }

  final List<Map<String, dynamic>> listTileData = [
    {'text': 'Customer Service', 'icon': Icons.person_3_rounded},
    {'text': 'Profile', 'icon': Icons.account_circle},
    {'text': 'Settings', 'icon': Icons.settings},
    {'text': 'Notifications', 'icon': Icons.notifications},
    {'text': 'Help', 'icon': Icons.help_outline},
  ];
}
