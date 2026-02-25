import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';

import './utils/theme/theme.dart';
import './features/authentication/screens/onboarding/onboarding.dart';

//-- USE THIS CLASS TO SETUP THEMES, INITIAL BINDINGS, ANY ANIMATIONS, AND MUCH MORE ------
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    debugPrint('_____ APPLYING THEME: ${ThemeMode.dark}');

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
