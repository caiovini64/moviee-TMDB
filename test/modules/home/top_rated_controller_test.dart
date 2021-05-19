import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_api/app/modules/home/children/initial/controllers/top_rated_controller.dart';

main() {
  TopRatedController controller;

  setUp(() {
    controller = TopRatedController();
  });

  group('Top Rated Controller Test', () {
    test("State is loaded", () async {
      controller = TopRatedController();
      final movies = controller.movieListTopRated;
      await controller.loadTopRatedMovies();
      expect(movies.length, isNotNull);
    });
  });
}
