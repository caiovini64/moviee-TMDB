import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class PopularController extends GetxController
    with StateMixin<RxList<MovieModel>> {
  RxList<MovieModel> _movieListPopular = <MovieModel>[].obs;

  List<MovieModel> get movieListPopular => _movieListPopular;

  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);

  Future<RxList<MovieModel>> loadPopularMovies() async {
    _movieListPopular.assignAll(await MovieRepository.getAllPopular());
    return _movieListPopular;
  }

  @override
  void onInit() {
    super.onInit();
    loadPopularMovies().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
  }
}
