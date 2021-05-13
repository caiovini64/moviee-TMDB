import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class TopRatedController extends GetxController
    with StateMixin<RxList<MovieModel>> {
  RxList<MovieModel> _movieListTopRated = <MovieModel>[].obs;

  List<MovieModel> get movieListTopRated => _movieListTopRated;

  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);

  Future<RxList<MovieModel>> loadTopRatedMovies() async {
    _movieListTopRated.assignAll(await MovieRepository.getAllTopRated());
    return _movieListTopRated;
  }

  @override
  void onInit() {
    super.onInit();
    loadTopRatedMovies().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
  }
}
