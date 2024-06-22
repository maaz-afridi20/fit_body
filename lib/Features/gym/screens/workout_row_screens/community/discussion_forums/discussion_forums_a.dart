import '../../../../../../Utils/constants/exports.dart';

class DiscussionForumsA extends StatelessWidget {
  const DiscussionForumsA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ResizableContainer(widgets: [
        const TrainingOfTheDayContainer(
                img:
                    "https://images.pexels.com/photos/6389506/pexels-photo-6389506.jpeg?auto=compress&cs=tinysrgb&w=600",
                trainingName: "Cycling Challenge",
                showTopRightTitle: false,
                showNumberOfExercises: false)
            .px32()
            .py20()
      ]),
      MHelperFunctions.mHeightBox(7),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Forums',
            style: MTextStyles.mHeadingStyle(
                color: MColors.yellowishColor, fontWeight: FontWeight.w500)),
        MHelperFunctions.mHeightBox(7),
        //
        //! forum container...
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: MColors.darkPurpleColor),
            child: Column(children: [
              ForumTitlesWidget(
                  forumTitle: "Strength Training Techniques",
                  forumSubtitle: "Techniques training methods",
                  forumTime: "Today 17:05",
                  onTap: () => MHelperFunctions.navigateTo(
                      context, const DiscussionForumsB())),
              ForumTitlesWidget(
                  forumTitle: "Nutritions and diet stategies",
                  forumSubtitle: "Meal planning suppliments, preferences",
                  forumTime: "Today 1:05",
                  onTap: () => MHelperFunctions.navigateTo(
                      context, const DiscussionForumsB())),
              ForumTitlesWidget(
                  forumTitle: "Cardiovasculor Fitness",
                  forumSubtitle: "About different types of cardio fitness word",
                  forumTime: "Today 4:05",
                  onTap: () => MHelperFunctions.navigateTo(
                      context, const DiscussionForumsB())),
              ForumTitlesWidget(
                  forumTitle: "Strength Training Techniques",
                  forumSubtitle:
                      "Stategies for improving flexibility and joint mobility to prevent injuries",
                  forumTime: "Today 14:05",
                  onTap: () => MHelperFunctions.navigateTo(
                      context, const DiscussionForumsB())),
            ]).p12())
      ]).px32()
    ]).wrapWithSingleChildScrollView();
  }
}
