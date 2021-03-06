import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class TopRatedController extends GetxController with StateMixin {
  final MovieRepository movieRepository;
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;
  List<MovieModel> get movieListTopRated => _movieListTopRated;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  TopRatedController(this.movieRepository);

  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);

  void goToMovies(String value) {
    Get.toNamed(Routes.MOVIES, arguments: value);
  }

  loadTopRatedMovies() async {
    await movieRepository.getAllTopRated().then((response) {
      change(response, status: RxStatus.success());
      _movieListTopRated.assignAll(response);
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
  }

  @override
  void onInit() {
    super.onInit();
    loadTopRatedMovies();
  }
}
