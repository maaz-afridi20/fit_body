import 'package:fit_body/Utils/constants/exports.dart';

final List<ArticlesAndTitleModel> articleAndTipePageData = [
  ArticlesAndTitleModel(
      mainTitle: "Strength Training Tips",
      subTitle: MTextString.loremIpsum,
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTutSZU8ctq3DAUDTtUtT9o2kodcX97L4iu7g&s",
      webLaunchingUrl:
          "https://www.nerdfitness.com/blog/how-to-build-your-own-workout-routine/"),
  ArticlesAndTitleModel(
      mainTitle: "Healty Weight Loss",
      subTitle: MTextString.loremIpsum,
      imgUrl:
          "https://img.livestrong.com/640/clsd/getty/8ffe3c799bdb4dffb84040fa406a2c15",
      webLaunchingUrl:
          "https://www.nerdfitness.com/blog/just-how-fast-can-i-get-the-body-i-want/"),
  ArticlesAndTitleModel(
      mainTitle: "Unlock Your Gym Potential",
      subTitle: MTextString.loremIpsum,
      imgUrl:
          "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      webLaunchingUrl:
          "https://www.nerdfitness.com/blog/the-beginners-guide-to-the-mediterranean-diet/"),
  ArticlesAndTitleModel(
      mainTitle: "From Buffer To Buff",
      subTitle: MTextString.loremIpsum,
      imgUrl:
          "https://images.pexels.com/photos/917653/pexels-photo-917653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      webLaunchingUrl:
          "https://www.nerdfitness.com/blog/a-beginners-guide-to-the-gym-everything-you-need-to-know/"),
  ArticlesAndTitleModel(
      mainTitle: "Strategies For Gym Exercise",
      subTitle: MTextString.loremIpsum,
      imgUrl:
          "https://images.pexels.com/photos/3076509/pexels-photo-3076509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      webLaunchingUrl:
          "https://www.nerdfitness.com/blog/becoming-wolverine-how-to-recover-faster-and-never-get-hurt-again/"),
];

class ArticlesAndTitleModel {
  final String mainTitle;
  final String subTitle;
  final String imgUrl;
  final String webLaunchingUrl;
  ArticlesAndTitleModel(
      {required this.mainTitle,
      required this.subTitle,
      required this.imgUrl,
      required this.webLaunchingUrl});
}


  // FavouritesScreenContainer(
  //     mainTitle: "Strength Training Tips",
  //     subTitle: [Text(MTextString.loremIpsum)],
  //     imageString:
  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTutSZU8ctq3DAUDTtUtT9o2kodcX97L4iu7g&s"),
  // FavouritesScreenContainer(
  //     mainTitle: "Healty Weight Loss",
  //     subTitle: [Text(MTextString.loremIpsum)],
  //     imageString:
  //         "https://img.livestrong.com/640/clsd/getty/8ffe3c799bdb4dffb84040fa406a2c15"),
  // FavouritesScreenContainer(
  //     mainTitle: "Unlock Your Gym Potential",
  //     subTitle: [Text(MTextString.loremIpsum)],
  //     imageString:
  //         "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
  // FavouritesScreenContainer(
  //     mainTitle: "From Buffer To Buff",
  //     subTitle: [Text(MTextString.loremIpsum)],
  //     imageString:
  //         "https://images.pexels.com/photos/917653/pexels-photo-917653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
  // FavouritesScreenContainer(
  //     mainTitle: "Strategies For Gym Exercise",
  //     subTitle: [Text(MTextString.loremIpsum)],
  //     imageString:
  //         "https://images.pexels.com/photos/3076509/pexels-photo-3076509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),