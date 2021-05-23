import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/movie_repository.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

class MoviesController extends GetxController
    with StateMixin<List<MovieModel>> {
  final MovieRepository repository;
  MoviesController({required this.repository});
  final RxList<MovieModel> _movieList = <MovieModel>[].obs;
  final String _movieArgument = Get.arguments;
  final urlPath = 'https://image.tmdb.org/t/p/w500/';

  get movieArgument => _movieArgument;
  List<MovieModel> get movieList => _movieList;
  void goToDetails(movie) => Get.toNamed(Routes.DETAILS, arguments: movie);

  @override
  void onInit() {
    super.onInit();
    loadData(movieArgument);
  }

  loadPopularMovies() async {
    await repository.getAllPopular().then((response) {
      change(response, status: RxStatus.success());
      _movieList.assignAll(response);
    }, onError: (error) {
      change(null, status: RxStatus.error('Erro ao consumir api'));
    });
  }

  loadNowPlaying() async {
    await repository.getNowPlaying().then((value) {
      change(value, status: RxStatus.success());
      _movieList.assignAll(value);
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes'));
    });
  }

  loadUpcoming() async {
    await repository.getAllUpcoming().then((value) {
      change(value, status: RxStatus.success());
      _movieList.assignAll(value);
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes'));
    });
  }

  loadTopRated() async {
    await repository.getAllTopRated().then((value) {
      change(value, status: RxStatus.success());
      _movieList.assignAll(value);
    }).catchError((error) {
      change(null, status: RxStatus.error('Erro ao carregar filmes'));
    });
  }

  loadData(argument) {
    if (argument == 'Now Playing') {
      loadNowPlaying();
    } else if (argument == 'Upcoming') {
      loadUpcoming();
    } else if (argument == 'Top Rated') {
      loadTopRated();
    } else if (argument == 'Most Popular') {
      loadPopularMovies();
    }
  }
}
