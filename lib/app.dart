import '../../../../Utils/constants/exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      builder: (_, child) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Choopan Gym',
        home: SplashScreen(),
      ),
    );
  }
}
