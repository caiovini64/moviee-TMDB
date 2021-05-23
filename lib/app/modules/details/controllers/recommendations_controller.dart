import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';

class RecommendationsController extends GetxController
    with StateMixin<List<MovieModel>> {
  final MovieRepository movieRepository;
  RecommendationsController(this.movieRepository);

  final castController = Get.find<CastController>();
  final detailsController = Get.find<DetailsController>();
  MovieModel _movie = Get.arguments;
  late Rx<MovieModel> currentMovie;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  void onInit() {
    super.onInit();
    currentMovie = _movie.obs;
    updateCurrentMovie(_movie);
  }

  updateCurrentMovie(MovieModel movie) {
    currentMovie.value = movie;
    loadSimilars(currentMovie.value.id);
    castController.loadCast(currentMovie.value.id);
    detailsController.updateCurrentMovie(currentMovie);
  }

  loadSimilars(movieId) async {
    await movieRepository.getRecommendations(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes similares'));
    });
  }
}
