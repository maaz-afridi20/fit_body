import 'package:fit_body/Utils/themes/themes.dart';

import '../../../../Utils/constants/exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Choopan Gym',
        themeMode: ThemeMode.system,
        theme: MAppTheme.lightTheme,
        darkTheme: MAppTheme.darkTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
