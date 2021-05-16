import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';

class DetailsController extends GetxController {
  MovieModel _movie = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  MovieModel get movie => _movie;

  updateCurrentMovie(movie) => _movie = movie.value;
}
