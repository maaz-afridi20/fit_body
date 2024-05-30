import 'package:fit_body/Utils/constants/exports.dart';

class AllHomeScreenSearches extends StatelessWidget {
  const AllHomeScreenSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.heightBox,
          Row(
            children: [
              const WorkoutTimeContainer(
                containerImage:
                    "https://images.pexels.com/photos/3775566/pexels-photo-3775566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                containerTitle: "Squat Exercise",
                id: '',
              ),
              MHelperFunctions.giveWidth(10.w),
              const WorkoutTimeContainer(
                containerImage:
                    "https://images.pexels.com/photos/4662352/pexels-photo-4662352.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                containerTitle: "Full Body Stretching",
                id: '',
              ),
            ],
          ),
          //
          //
          //!widget of  all the image with text
          21.heightBox,
          const AllSearchScreenImgAndTextWidget(),
        ],
      ),
    );
  }
}
