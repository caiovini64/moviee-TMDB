import 'package:tmdb_api/app/utils/network/http_client.dart';

class MovieService {
   HttpClient client = HttpClient();
  Future<Map<String, dynamic>> getAllTopRated() async {
    final response = await client.get('/movie/top_rated');
    return response;
  }

  Future<Map<String, dynamic>> getAllPopular() async {
    final response = await client.get('/movie/popular');
    return response;
  }

  Future<Map<String, dynamic>> getAllUpcoming() async {
    final response = await client.get('/movie/upcoming');
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