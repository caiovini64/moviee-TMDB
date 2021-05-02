import 'package:tmdb_api/app/data/models/tv_show_model.dart';
import 'package:tmdb_api/app/data/providers/tv_show_provider.dart';

class TvShowRepository {
  static Future<List<TvShowModel>> getAll() async {
    List<TvShowModel> _list = <TvShowModel>[];
    Map json = await TvShowProvider.getAllTopRated();
    final tvShows = json['results'] as List;
    tvShows.forEach((element) {
      final tvShowElement = TvShowModel.fromJson(element);
      _list.add(tvShowElement);
    });
    return _list;
  }
}
