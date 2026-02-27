import 'package:get/get.dart';

import '../../features/authentication/screens/login/login.dart';
import '../../features/home/home.dart';
import '../../features/onboarding/onboarding_binding.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/splash/binding/splash_binding.dart';
import '../../features/splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
  ];
}
