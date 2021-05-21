import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/upcoming_controller.dart';
import 'package:tmdb_api/app/modules/home/controllers/home_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/network/http_client.dart';

class HomeBinding implements Bindings {
  final HttpClient httpClient = HttpClient();

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<TopRatedController>(() =>
        TopRatedController(MovieRepository(MovieService(client: httpClient))));
    Get.lazyPut<PopularController>(() =>
        PopularController(MovieRepository(MovieService(client: httpClient))));
    Get.lazyPut<UpcomingController>(() =>
        UpcomingController(MovieRepository(MovieService(client: httpClient))));
    Get.put(AppTheme());
  }
}
