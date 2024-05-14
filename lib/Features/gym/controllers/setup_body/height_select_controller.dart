import 'package:fit_body/Utils/constants/exports.dart';

class HeightWeightSelectController extends GetxController {
  static HeightWeightSelectController get instance => Get.find();
  final RxInt selectedHeight = 150.obs;
  final RxInt selectedWeight = 50.obs;

  void updateSelectedHeight(index) {
    selectedHeight.value = index;
  }

  //! weight..
  void updateSelectedWeight(index) {
    selectedWeight.value = index;
  }
}
