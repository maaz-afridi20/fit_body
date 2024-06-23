import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/workout_and_articles_page_data.dart';

class ArticleAndTips extends StatelessWidget {
  const ArticleAndTips({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: articleAndTipePageData.length,
        itemBuilder: (context, index) {
          final data = articleAndTipePageData[index];
          return FavouritesScreenContainer(
            mainTitle: data.mainTitle,
            subTitle: [Text(data.subTitle)],
            imageString: data.imgUrl,
          ).onTap(() {
            MHelperFunctions.launchUlr(data.webLaunchingUrl);
          }).py(10);
        }).px32();
  }
}


  // MHelperFunctions.navigateTo(
  //               context,
  //               ArticleDetails(
  //                   heading: data.mainTitle,
  //                   timeOnPublished: "Published on september 15",
  //                   imgUrl: data.imageString));