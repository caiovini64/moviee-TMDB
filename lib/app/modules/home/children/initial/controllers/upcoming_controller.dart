import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class UpcomingController extends GetxController
    with StateMixin<RxList<MovieModel>> {
  final MovieRepository movieRepository;
  RxList<MovieModel> _movieListUpcoming = <MovieModel>[].obs;
  List<MovieModel> get movieListUpcoming => _movieListUpcoming;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  UpcomingController(this.movieRepository);

  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);

  Future<RxList<MovieModel>> loadUpcomingMovies() async {
    _movieListUpcoming.assignAll(await movieRepository.getAllUpcoming());
    return _movieListUpcoming;
  }

  @override
  void onInit() {
    super.onInit();
    print(Get.locale);
    loadUpcomingMovies().then((response) {
      change(
        response,
        status: RxStatus.success(),
      );
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
  }
}
