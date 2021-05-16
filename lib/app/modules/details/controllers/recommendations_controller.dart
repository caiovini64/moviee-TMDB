import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/modules/details/controllers/cast_controller.dart';
import 'package:tmdb_api/app/modules/details/controllers/details_controller.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class RecommendationsController extends GetxController
    with StateMixin<List<MovieModel>> {
  final castController = Get.find<CastController>();
  final detailsController = Get.find<DetailsController>();
  MovieModel _movie = Get.arguments;
  Rx<int> currentMovie = 0.obs;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  void onInit() {
    super.onInit();
    updateCurrentMovie(_movie.id);
  }

  updateCurrentMovie(id) {
    currentMovie.value = id;
    loadSimilars(currentMovie);
    castController.loadCast(currentMovie);
    detailsController.loadDetails(currentMovie);
  }

  loadSimilars(movieId) async {
    await MovieRepository.getRecommendations(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes similares'));
    });
  }
}
