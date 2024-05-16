import '../../../Utils/constants/exports.dart';

class OnlyImageContainer extends StatelessWidget {
  const OnlyImageContainer({super.key, required this.imageString});

  final String imageString;

  @override
  Widget build(BuildContext context) {
    final RxBool isFavourite = false.obs;
    return Container(
      height: 145.h,
      width: 170.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
              image: AssetImage(imageString), fit: BoxFit.cover)),
      child: Stack(children: [
        Positioned(
          right: 15.w,
          top: 8.h,
          child: GestureDetector(
            onTap: () {
              isFavourite.toggle();
              isFavourite.value
                  ? MHelperFunctions.showSnackBar('added to favourites')
                  : MHelperFunctions.showSnackBar('removed from favourites');
            },
            child: Obx(() => Icon(Icons.star_rounded,
                color:
                    isFavourite.value ? MColors.yellowishColor : Colors.white)),
          ),
        ),
      ]),
    );
  }
}
