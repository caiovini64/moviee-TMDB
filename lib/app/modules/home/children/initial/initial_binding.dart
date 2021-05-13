import 'package:get/get.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/upcoming_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopRatedController>(() => TopRatedController());
    Get.lazyPut<PopularController>(() => PopularController());
    Get.lazyPut<UpcomingController>(() => UpcomingController());
    Get.lazyPut<MovieRepository>(() => MovieRepository());
    Get.lazyPut<MovieService>(() => MovieService());
    Get.put(AppTheme());
  }
}
