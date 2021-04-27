import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/providers/movie_provider.dart';

class MovieRepository {
  final MovieProvider _provider = Get.find<MovieProvider>();

  //TODO: Estudar como tornar static
  Future<List<MovieModel>> getAllTopRated() async {
    List<MovieModel> list = <MovieModel>[];
    Map json = await _provider.getAllTopRated();
    final movies = json['results'] as List;
    movies.forEach((element) {
      final movieElement = MovieModel.fromJson(element);
      list.add(movieElement);
    });
    return list;
  }
}
