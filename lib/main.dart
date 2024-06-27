import '../../../../Utils/constants/exports.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp() async {
  Get.put(AuthenticationRepo());
  FlutterNativeSplash.remove();
}
