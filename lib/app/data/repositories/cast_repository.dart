import 'package:tmdb_api/app/data/models/cast_model.dart';
import 'package:tmdb_api/app/data/services/cast_services.dart';

class CastRepository {
  static Future<List<CastModel>> getAllCast(movieId) async {
    List<CastModel> _list = <CastModel>[];
    Map json = await CastService().getAllCredits(movieId);
    final cast = json['cast'] as List;
    cast.forEach((element) {
      final castElement = CastModel.fromJson(element);
      _list.add(castElement);
    });
    return _list;
  }
}
