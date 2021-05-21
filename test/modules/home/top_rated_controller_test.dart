import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';

main() {
  TopRatedController controller;

  setUp(() {
    controller = TopRatedController(MovieRepository(MovieService()));
  });

  group('Top Rated Controller Test', () {
    test("State is loaded", () async {
      controller = TopRatedController(MovieRepository(MovieService()));
      final movies = controller.movieListTopRated;
      await controller.loadTopRatedMovies();
      expect(movies.length, isNotNull);
    });
  });
}
