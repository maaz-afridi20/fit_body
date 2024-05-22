import 'package:fit_body/Utils/constants/exports.dart';

class AllVisibilityFaqsTile extends StatelessWidget {
  const AllVisibilityFaqsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          MDivider(),
          MExpandableListile(
              title: "What services do you offer?",
              expandedText: """ We offer a wide range of services including 
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
      molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
      numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiu """),
          MDivider(),
          MExpandableListile(
              title: "How can I contact customer support?",
              expandedText: """We offer a wide range of services including 
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
      molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
      numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
       """),
          MDivider(),
          MExpandableListile(
              title: "What are your business hours?",
              expandedText: """We offer a wide range of services including 
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
      molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
      numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
      """),
          MDivider(),
        ],
      ),
    );
  }
}
