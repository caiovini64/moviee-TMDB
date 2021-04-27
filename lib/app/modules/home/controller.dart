import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class HomeController extends GetxController {
  final _movieRepository = Get.find<MovieRepository>();
  RxList<MovieModel> movieList = <MovieModel>[].obs;

  @override
  void onInit() {
    loadTopRatedMovies();
    super.onInit();
  }

  void loadTopRatedMovies() async {
    movieList.assignAll(await _movieRepository.getAllTopRated());
  }
}
