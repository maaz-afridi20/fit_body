import 'package:fit_body/AppComons/styles/heading_style.dart';
import 'package:fit_body/AppComons/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  const ArticleDetails(
      {super.key,
      required this.heading,
      required this.timeOnPublished,
      required this.imgUrl});

  final String heading;
  final String timeOnPublished;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Resources"),
      body: Column(
        children: [
          ListTile(
              title: Text(heading),
              subtitle: Text(timeOnPublished),
              titleTextStyle:
                  MTextStyles.mHeadingStyle(fontWeight: FontWeight.w600),
              subtitleTextStyle: MTextStyles.mNormalStyle(),
              trailing: const Icon(Icons.star_rounded)),
        ],
      ),
    );
  }
}
