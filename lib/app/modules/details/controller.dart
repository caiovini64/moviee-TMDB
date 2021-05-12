import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_details_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class DetailsController extends GetxController
    with StateMixin<MovieDetailsModel> {
  int _movieId = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  @override
  void onInit() {
    super.onInit();
    loadDetails(_movieId);
  }

  loadDetails(movieId) async {
    await MovieRepository.getDetails(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar detalhes'));
    });
  }
}
