import 'package:fit_body/AppComons/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class TalkingAssistant extends StatelessWidget {
  const TalkingAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MAppbar(showActionWidget: false, appbarTitle: "ASSISTANT"),
    );
  }
}
