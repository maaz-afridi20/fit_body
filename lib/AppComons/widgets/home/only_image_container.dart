import '../../../Utils/constants/exports.dart';

class OnlyImageContainer extends StatelessWidget {
  const OnlyImageContainer({super.key, required this.imageString, this.id});

  final String imageString;
  final String? id;

  @override
  Widget build(BuildContext context) {
    final controller = LikeBtnController.instance;
    return Container(
      height: 134.h,
      width: 157.w,
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
              controller.toggleFavourite(id!);
            },
            child: Obx(() => Icon(
                  Icons.star_rounded,
                  color: controller.favouriteStates[id] ?? false
                      ? MColors.yellowishColor
                      : Colors.white,
                )),
          ),
        ),
      ]),
    );
  }
}
