import 'package:get/get.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/popular_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/upcoming_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';
import 'package:http/http.dart' as http;

class InitialBinding implements Bindings {
  final ConnectionClient client = ConnectionClient(http.Client());

  @override
  void dependencies() {
    Get.put(TopRatedController(MovieRepository(MovieService(client: client))));
    Get.put(PopularController(MovieRepository(MovieService(client: client))));
    Get.put(UpcomingController(MovieRepository(MovieService(client: client))));
    Get.put(MovieRepository(MovieService(client: client)));
    Get.put(MovieService(client: client));
    Get.put(AppTheme());
  }
}
