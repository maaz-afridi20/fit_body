import 'package:fit_body/Utils/constants/exports.dart';

class AllVisibilityFaqsTile extends StatelessWidget {
  const AllVisibilityFaqsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MDivider(),
          MExpandableListile(
              title: "What is this app/company about?",
              expandedText:
                  """Our app/company provides [specific services/products],helping you to [solve a problem/achieve a goal]. We focus on delivering the best [product/service] to improve your [specific aspect of life/business] """),
          MDivider(),
          MExpandableListile(
              title: "How do I create an account?",
              expandedText:
                  """To create an account, click on the "Sign Up" button on the home screen,fill in your details such as name, email, and password,and then follow the on-screen instructions to complete the registration process"""),
          MDivider(),
          MExpandableListile(
              title: "What should I do if I forget my password",
              expandedText:
                  """If you forget your password,click on the "Forgot Password" link on the login page.Enter your registered email address, and we will send you instructions to reset your password"""),
          MDivider()
        ]).wrapWithSingleChildScrollView();
  }
}
