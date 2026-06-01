import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:note_app/features/auth/login/presentation/login_screen.dart';
import 'package:note_app/features/auth/register/presentation/register_screen.dart';
import 'package:note_app/features/home/presentation/home_screen.dart';
import 'package:note_app/helpers/di.dart';
import 'package:note_app/helpers/helper_methods.dart';
import 'package:note_app/helpers/navigation_service.dart';
import 'package:note_app/helpers/register_provider.dart';
import 'package:note_app/localization/language.dart';
import 'package:note_app/localization/langueges_controller.dart';
import 'package:note_app/splash_screen.dart';
import 'package:provider/provider.dart';

import 'networks/dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  diSetup();
  initiInternetChecker();
  Get.put(LanguageController());
  DioSingleton.instance.create();
  configLoading(); //  Configure EasyLoading globally

  runApp(const MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskColor = Colors.black.withAlpha((0.4 * 255).toInt())
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return const UtillScreenMobile();
          },
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LanguageController>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // ignore: unnecessary_underscores
      builder: (_, __) {
        return GetMaterialApp(
          showPerformanceOverlay: false,
          fallbackLocale: const Locale("en", "US"),
          locale: controller.selectedLocale.value,
          translations: Apptranslation(),
          debugShowCheckedModeBanner: false,
          navigatorKey: NavigationService.navigatorKey,

          // Proper combined builder for EasyLoading + MediaQuery
          builder: EasyLoading.init(
            // builder: (context, widget) {
            //   return MediaQuery(data: MediaQuery.of(context), child: widget!);
            // },
          ),

          home: SplashScreen(),
        );
      },
    );
  }
}
