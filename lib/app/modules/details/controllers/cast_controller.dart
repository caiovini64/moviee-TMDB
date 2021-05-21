import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/cast_model.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/cast_repository.dart';

class CastController extends GetxController with StateMixin<List<CastModel>> {
  final CastRepository castRepository;
  CastController(this.castRepository);

  MovieModel _movie = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  void onInit() {
    super.onInit();
    loadCast(_movie.id);
  }

  loadCast(movieId) async {
    await castRepository.getAllCast(movieId).then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar cast'));
    });
  }
}
