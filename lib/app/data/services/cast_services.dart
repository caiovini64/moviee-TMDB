import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tmdb_api/app/utils/network/api_base.dart';

class CastService {
  static Future<Map<String, dynamic>> getAllCredits(movieId) async {
    http.Response response = await http.get(
      Uri.parse(
          '$apiBase/movie/$movieId/credits?api_key=$apiKey&language=${Get.locale}'),
    );

    if (response.statusCode != 200) throw Exception();

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json;
    }
    throw Exception(response.body);
  }
}
