import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/utils/network/http_client.dart';

import 'controllers/movies_controller.dart';

class MoviesBinding implements Bindings {
  final HttpClient httpClient = HttpClient();

  @override
  void dependencies() {
    Get.lazyPut<MoviesController>(() => MoviesController(
        repository: MovieRepository(MovieService(client: httpClient))));
  }
}
