import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/splash/binding.dart';
import 'package:tmdb_api/app/modules/splash/page.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
