import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class RecommendationsController extends GetxController
    with StateMixin<List<MovieModel>> {
  MovieModel _movie = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  set movie(movie) => _movie = movie;

  void goToDetails(movie) {
    Get.reset();
    Get.offAndToNamed(
      Routes.DETAILS,
      arguments: movie,
    );
  }

  void onInit() {
    super.onInit();
    loadSimilars(_movie.id);
  }

  loadSimilars(movieId) async {
    await MovieRepository.getRecommendations(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes similares'));
    });
  }
}
