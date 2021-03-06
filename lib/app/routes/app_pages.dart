import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/details/details_binding.dart';
import 'package:tmdb_api/app/modules/details/details_page.dart';
import 'package:tmdb_api/app/modules/home/home_binding.dart';
import 'package:tmdb_api/app/modules/home/home_page.dart';
import 'package:tmdb_api/app/modules/movies/movies_binding.dart';
import 'package:tmdb_api/app/modules/movies/movies_page.dart';
import 'package:tmdb_api/app/modules/splash/splash_binding.dart';
import 'package:tmdb_api/app/modules/splash/splash_page.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsPage(),
      binding: DetailsBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.MOVIES,
      page: () => MoviesPage(),
      binding: MoviesBinding(),
    ),
  ];
}
