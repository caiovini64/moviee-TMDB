import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:tmdb_api/app/data/services/movie_services.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(UriFake());
  });
  test('Get data placeholder', () async {
    final client = MocktailClient();
    final provider = MovieService(client: client);
    when(() => client.get(any()))
        .thenAnswer((_) async => http.Response(a, 200));
    expect(await provider.getAllTopRated2(), contains('adult'));
  });
}

class MocktailClient extends Mock implements http.Client {}

class UriFake extends Fake implements Uri {}

const a = '''{
      "poster_path": "/e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg",
      "adult": false,
      "overview": "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
      "release_date": "2016-08-03",
      "genre_ids": [
        14,
        28,
        80
      ],
      "id": 297761,
      "original_title": "Suicide Squad",
      "original_language": "en",
      "title": "Suicide Squad",
      "backdrop_path": "/ndlQ2Cuc3cjTL7lTynw6I4boP4S.jpg",
      "popularity": 48.261451,
      "vote_count": 1466,
      "video": false,
      "vote_average": 5.91
    }
''';
