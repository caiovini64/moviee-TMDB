import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/models/tv_show_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/data/repositories/tv_show_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class HomeController extends GetxController with StateMixin {
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;
  RxList<MovieModel> _movieListPopular = <MovieModel>[].obs;
  RxList<TvShowModel> _tvShowListPopular = <TvShowModel>[].obs;

  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  get movieListTopRated => _movieListTopRated;
  get movieListPopular => _movieListPopular;
  get tvShowListPopular => _tvShowListPopular;

  Future<RxList<MovieModel>> loadTopRatedMovies() async {
    _movieListTopRated.assignAll(await MovieRepository.getAllTopRated());
    return _movieListTopRated;
  }

  Future<RxList<MovieModel>> loadPopularMovies() async {
    _movieListPopular.assignAll(await MovieRepository.getAllPopular());
    return _movieListPopular;
  }

  Future<RxList<TvShowModel>> loadPopularTvShows() async {
    _tvShowListPopular.assignAll(await TvShowRepository.getAll());
    return _tvShowListPopular;
  }

  @override
  void onInit() {
    loadTopRatedMovies().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
    loadPopularMovies().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
    loadPopularTvShows().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
    super.onInit();
  }

  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);
}
