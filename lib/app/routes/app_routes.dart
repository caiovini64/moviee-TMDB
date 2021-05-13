import 'package:tmdb_api/app/modules/details/details_page.dart';
import 'package:tmdb_api/app/modules/home/home_page.dart';
import 'package:tmdb_api/app/modules/splash/splash_page.dart';

abstract class Routes {
  static const SPLASH = SplashPage.route;
  static const HOME = HomePage.route;
  static const DETAILS = DetailsPage.route;
}
