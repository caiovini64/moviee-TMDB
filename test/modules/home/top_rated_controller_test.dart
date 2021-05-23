import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';
import 'package:tmdb_api/app/utils/network/http_client.dart';

main() {
  TopRatedController controller;
  final HttpClient httpClient = HttpClient();

  setUp(() {
    controller =
        TopRatedController(MovieRepository(MovieService(client: httpClient)));
  });

  group('Top Rated Controller Test', () {
    test("State is loaded", () async {
      controller =
          TopRatedController(MovieRepository(MovieService(client: httpClient)));
      final movies = controller.movieListTopRated;
      await controller.loadTopRatedMovies();
      expect(movies.length, isNotNull);
    });
  });
}
