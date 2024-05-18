import 'package:fit_body/Utils/constants/exports.dart';

class SetupAgeController extends GetxController {
  final RxInt selectedNumber = 10.obs;
  RxInt itemCount = 101.obs;

  void updateAge(value) {
    selectedNumber.value = value;
  }
  // int centerIndex = (itemCount.value ~/ 2);
}
