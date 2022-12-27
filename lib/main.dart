import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'core/core.dart';

Future<void> main() async {
  await AppService.init();
  GlobalErrorHandler(app: const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.initial,
            getPages: AppPages.routes,
            locale: const Locale('en'),
            translationsKeys: AppTranslation.keys,
            theme: lightTheme,
            themeMode: ThemeMode.light,
          ));
}
