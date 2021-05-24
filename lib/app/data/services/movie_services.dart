import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmdb_api/app/utils/network/api_base.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';

class MovieService {
  final client;
  MovieService({required this.client});
  Future<Map<String, dynamic>> getAllTopRated() async {
    final response = await client.get('/movie/top_rated');
    return response;
  }

  Future<Map<String, dynamic>> getAllTopRated2() async {
    final response = await client
        .get(Uri.parse(apiBase + '/movie/top_rated?api_key=$apiKey'));
    final json = jsonDecode(response.body);
    return json;
  }

  Future<Map<String, dynamic>> getAllPopular() async {
    final response = await client.get('/movie/popular');
    return response;
  }

  Future<Map<String, dynamic>> getAllUpcoming() async {
    final response = await client.get('/movie/upcoming');
    return response;
  }

  Future<Map<String, dynamic>> getNowPlaying() async {
    final response = await client.get('/movie/now_playing');
    return response;
  }

  Future<Map<String, dynamic>> getDetails(movieId) async {
    final response = await client.get('/movie/$movieId');
    return response;
  }

  Future<Map<String, dynamic>> getRecommendations(movieId) async {
    final response = await client.get('/movie/$movieId/recommendations');
    return response;
  }
}
