import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';

import '../mocks/mock_client.dart';
import 'package:http/http.dart' as http;

void main() {
  group('Test popular movies', () {
    test('Test succes', () async {
      final client = MockClient();
      final connectionClient = ConnectionClient(client);
      // when(connectionClient.get(any)).thenReturn(http.Response({}, 200));
      final movieService = MovieService(client: connectionClient);

      final movieList = await movieService.getAllPopular();

      expect(movieList['results'], isNotNull);
    });
  });
}
