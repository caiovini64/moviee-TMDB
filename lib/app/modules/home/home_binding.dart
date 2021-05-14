import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/upcoming_controller.dart';
import 'package:tmdb_api/app/modules/home/controllers/home_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<TopRatedController>(() => TopRatedController());
    Get.lazyPut<PopularController>(() => PopularController());
    Get.lazyPut<UpcomingController>(() => UpcomingController());
    Get.put(AppTheme());
  }
}