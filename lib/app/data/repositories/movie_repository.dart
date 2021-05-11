import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/providers/movie_provider.dart';

class MovieRepository {
  static Future<List<MovieModel>> getAllTopRated() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieProvider.getAllTopRated();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  static Future<List<MovieModel>> getAllPopular() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieProvider.getAllPopular();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }

  static Future<List<MovieModel>> getAllUpcoming() async {
    List<MovieModel> _list = <MovieModel>[];
    Map json = await MovieProvider.getAllUpcoming();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      _list.add(movieElement);
    });
    return _list;
  }
}
