import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tmdb_api/app/utils/values/api_base.dart';

class TvShowProvider {
  static Future<Map<String, dynamic>> getAllPopular() async {
    http.Response response = await http.get(
      Uri.parse('$apiBase/tv/popular?api_key=$apiKey'),
    );
    if (response.statusCode != 200) throw Exception();
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json;
    }
    throw Exception();
  }
}
