import 'package:tmdb_api/app/modules/details/page.dart';
import 'package:tmdb_api/app/modules/home/page.dart';
import 'package:tmdb_api/app/modules/splash/page.dart';

abstract class Routes {
  static const SPLASH = SplashPage.route;
  static const HOME = HomePage.route;
  static const DETAILS = DetailsPage.route;
}
