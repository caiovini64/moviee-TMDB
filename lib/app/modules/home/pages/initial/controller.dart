import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class InitialController extends GetxController with StateMixin {
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;
  RxList<MovieModel> _movieListPopular = <MovieModel>[].obs;
  RxList<MovieModel> _movieListUpcoming = <MovieModel>[].obs;

  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  List<MovieModel> get movieListTopRated => _movieListTopRated;
  List<MovieModel> get movieListPopular => _movieListPopular;
  List<MovieModel> get movieListUpcoming => _movieListUpcoming;

  Future<RxList<MovieModel>> loadTopRatedMovies() async {
    _movieListTopRated.assignAll(await MovieRepository.getAllTopRated());
    return _movieListTopRated;
  }

  Future<RxList<MovieModel>> loadPopularMovies() async {
    _movieListPopular.assignAll(await MovieRepository.getAllPopular());
    return _movieListPopular;
  }

  Future<RxList<MovieModel>> loadUpcomingMovies() async {
    _movieListUpcoming.assignAll(await MovieRepository.getAllUpcoming());
    return _movieListUpcoming;
  }

  void a() => print(Get.deviceLocale);

  @override
  void onInit() {
    a();
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
    loadUpcomingMovies().then((response) {
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
