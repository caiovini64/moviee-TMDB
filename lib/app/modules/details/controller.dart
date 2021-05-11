import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_details_model.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class DetailsController extends GetxController with StateMixin {
  MovieModel movie = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  @override
  void onInit() {
    loadDetails(movie.id).then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
    super.onInit();
  }

  Future<MovieDetailsModel> loadDetails(movieId) async {
    final detail = await MovieRepository.getDetails(movieId);
    return detail;
  }
}
