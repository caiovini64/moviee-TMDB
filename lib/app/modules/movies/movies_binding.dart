import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';
import 'controllers/movies_controller.dart';
import 'package:http/http.dart' as http;

class MoviesBinding implements Bindings {
  final ConnectionClient httpClient = ConnectionClient(http.Client());

  @override
  void dependencies() {
    Get.lazyPut<MoviesController>(() => MoviesController(
        repository: MovieRepository(MovieService(client: httpClient))));
    Get.put<AppTheme>(AppTheme());
  }
}
