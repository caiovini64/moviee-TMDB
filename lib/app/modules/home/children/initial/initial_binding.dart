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
    Get.put(TopRatedController(), permanent: true);
    Get.put(PopularController(), permanent: true);
    Get.put(UpcomingController(), permanent: true);
    Get.put(MovieRepository(), permanent: true);
    Get.put(MovieService(), permanent: true);
    Get.put(AppTheme());
  }
}
