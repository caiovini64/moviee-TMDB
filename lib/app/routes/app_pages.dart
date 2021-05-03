import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/initial/binding.dart';
import 'package:tmdb_api/app/modules/initial/page.dart';
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
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    // GetPage(
    //   name: Routes.HOME,
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // )
  ];
}
