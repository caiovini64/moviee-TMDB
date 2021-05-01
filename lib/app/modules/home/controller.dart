import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class HomeController extends GetxController with StateMixin<List<MovieModel>> {
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;
  RxList<MovieModel> _movieListPopular = <MovieModel>[].obs;

  final urlPath = 'https://image.tmdb.org/t/p/original/';
  var screenSize = Get.mediaQuery;

  get movieListTopRated => _movieListTopRated;
  get movieListPopular => _movieListPopular;

  @override
  void onInit() {
    loadTopRatedMovies().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao buscar filmes'));
    });
    loadPopularMovies();
    super.onInit();
  }

  Future<RxList<MovieModel>> loadTopRatedMovies() async {
    _movieListTopRated.assignAll(await MovieRepository.getAllTopRated());
    return _movieListTopRated;
  }

  Future<RxList<MovieModel>> loadPopularMovies() async {
    _movieListPopular.assignAll(await MovieRepository.getAllPopular());
    return _movieListPopular;
  }
}
