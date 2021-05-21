import 'package:tmdb_api/app/data/models/movie_details_model.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';

class MovieRepository {
  final MovieService movieService;
  MovieRepository(this.movieService);

  Future<List<MovieModel>> getAllTopRated() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await movieService.getAllTopRated();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  Future<List<MovieModel>> getAllPopular() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await movieService.getAllPopular();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  Future<List<MovieModel>> getAllUpcoming() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await movieService.getAllUpcoming();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  Future<List<MovieModel>> getNowPlaying() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await movieService.getNowPlaying();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  Future<MovieDetailsModel> getDetails(movieId) async {
    final json = await movieService.getDetails(movieId);
    final detail = MovieDetailsModel.fromJson(json);
    return detail;
  }

  Future<List<MovieModel>> getRecommendations(movieId) async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await movieService.getRecommendations(movieId);
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }
}
