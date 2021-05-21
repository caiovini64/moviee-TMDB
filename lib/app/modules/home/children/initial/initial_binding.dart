import 'package:get/get.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/upcoming_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/network/http_client.dart';

class InitialBinding implements Bindings {
  final HttpClient httpClient = HttpClient();

  @override
  void dependencies() {
    Get.put(
        TopRatedController(MovieRepository(MovieService(client: httpClient))));
    Get.put(
        PopularController(MovieRepository(MovieService(client: httpClient))));
    Get.put(
        UpcomingController(MovieRepository(MovieService(client: httpClient))));
    Get.put(MovieRepository(MovieService(client: httpClient)));
    Get.put(MovieService(client: httpClient));
    Get.put(AppTheme());
  }
}
