import 'package:tmdb_api/app/data/models/movie_details_model.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';

class MovieRepository {
  static Future<List<MovieModel>> getAllTopRated() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieService.getAllTopRated();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  static Future<List<MovieModel>> getAllPopular() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieService.getAllPopular();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  static Future<List<MovieModel>> getAllUpcoming() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieService.getAllUpcoming();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  static Future<MovieDetailsModel> getDetails(movieId) async {
    final json = await MovieService.getDetails(movieId);
    final detail = MovieDetailsModel.fromJson(json);
    return detail;
  }
}
