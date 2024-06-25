import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../../Utils/constants/exports.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp() async {
  Get.put(SplashController());
  FlutterNativeSplash.remove();
}
