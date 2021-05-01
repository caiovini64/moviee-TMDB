import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmdb_api/app/utils/values/api_base.dart';

class MovieProvider {
  //TODO: Pesquisar melhores maneiras de tratar excessão

  static Future<Map<String, dynamic>> getAllTopRated() async {
    http.Response response =
        await http.get(Uri.parse('$apiBase/movie/top_rated?api_key=$apiKey'));

    if (response.statusCode != 200) throw Exception();

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json;
    }
    throw Exception(response.body);
  }

  static Future<Map<String, dynamic>> getAllPopular() async {
    http.Response response =
        await http.get(Uri.parse('$apiBase/movie/popular?api_key=$apiKey'));

    if (response.statusCode != 200) throw Exception();
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json;
    }
    throw Exception(response.body);
  }
}
