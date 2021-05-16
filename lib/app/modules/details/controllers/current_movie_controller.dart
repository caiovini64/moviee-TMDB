import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';

class CurrentMovieController extends GetxController {
  Rx<int> currentMovie = 0.obs;
  MovieModel _movie = Get.arguments;

  void onInit() {
    super.onInit();
    updateCurrentMovie(_movie.id);
  }

  updateCurrentMovie(id) {
    currentMovie.value = id;
    print(currentMovie.value);
  }
}
