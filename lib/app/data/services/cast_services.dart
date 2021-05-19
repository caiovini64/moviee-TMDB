import 'package:tmdb_api/app/utils/network/http_client.dart';


class CastService {
  HttpClient client = HttpClient();

  Future<Map<String,dynamic>> getAllCredits(movieId) async{
    final response = await client.get('/movie/$movieId/credits');
    return response;
  }
}
