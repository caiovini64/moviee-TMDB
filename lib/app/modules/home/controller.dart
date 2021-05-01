import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class HomeController extends GetxController with StateMixin<List<MovieModel>> {
  final _movieRepository = Get.find<MovieRepository>();
  RxList<MovieModel> movieList = <MovieModel>[].obs;
  final urlPath = 'https://image.tmdb.org/t/p/original/';
  var screenSize = Get.mediaQuery;

  @override
  void onInit() {
    loadTopRatedMovies().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao buscar filmes'));
    });
    super.onInit();
  }

  Future<RxList<MovieModel>> loadTopRatedMovies() async {
    movieList.assignAll(await _movieRepository.getAllTopRated());
    return movieList;
  }
}
