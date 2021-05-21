import 'package:get/get.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';

class MoviesController extends GetxController with StateMixin {
  final MovieRepository repository;
  MoviesController({required this.repository});

  final _movieArgument = Get.arguments;

  String get movieArgument => _movieArgument.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadData(movieArgument);
  }

  void loadNowPlaying() async {
    await repository.getNowPlaying().then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes'));
    });
  }

  loadData(argument) {
    if (argument == 'Now Playing') {
      loadNowPlaying();
    } else if (argument == 'Trending') {
      print('trend');
    } else {
      print('discover');
    }
  }
}
