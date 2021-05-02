import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/models/tv_show_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/repositories/tv_show_repository.dart';

class HomeController extends GetxController with StateMixin<List<MovieModel>> {
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;
  RxList<MovieModel> _movieListPopular = <MovieModel>[].obs;
  RxList<TvShowModel> _tvShowListTopRated = <TvShowModel>[].obs;

  final urlPath = 'https://image.tmdb.org/t/p/original/';
  var screenSize = Get.mediaQuery;

  get movieListTopRated => _movieListTopRated;
  get movieListPopular => _movieListPopular;
  get tvShowListTopRated => _tvShowListTopRated;

  @override
  void onInit() {
    loadTopRatedMovies().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
    loadPopularMovies().then(
        (response) => change(response, status: RxStatus.success()),
        onError: (error) =>
            change(null, status: RxStatus.error('Erro ao consumir api')));
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

  Future<RxList<TvShowModel>> loadTopRatedTvShows() async {
    _tvShowListTopRated.assignAll(await TvShowRepository.getAll());
    return _tvShowListTopRated;
  }
}
