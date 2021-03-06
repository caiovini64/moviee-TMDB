import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class DetailsController extends GetxController with StateMixin {
  final MovieRepository movieRepository;
  DetailsController(this.movieRepository);

  MovieModel _movie = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  MovieModel get movie => _movie;

  updateCurrentMovie(movie) => _movie = movie.value;

  void onInit() {
    super.onInit();
    loadDetails(_movie.id);
  }

  loadDetails(movieId) async {
    await movieRepository.getDetails(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar detalhes'));
    });
  }
}
