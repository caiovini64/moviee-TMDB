import 'dart:convert';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tmdb_api/app/data/models/movie_model.dart';
import 'package:tmdb_api/app/data/repositories/cast_repository.dart';
import 'package:tmdb_api/app/data/services/cast_services.dart';
import 'package:http/http.dart' as http;

import '../mocks/mock_client.dart';

void main() {
  test('Testa se está null', () {
    final jsonModel = jsonDecode(json);
    expect(jsonModel['id'], isNotNull);
    expect(jsonModel['overview'], isNotNull);
    expect(jsonModel['release_date'], isNotNull);
    expect(jsonModel['title'], isNotNull);
    expect(jsonModel['poster_path'], isNotNull);
    expect(jsonModel['genre_ids'], isNotNull);
  });
  test('Testa tratamento null', () {
    final jsonModel = <String, dynamic>{};
    final movie = MovieModel.fromJson(jsonModel);
    expect(movie.overview, isNotNull);
    expect(movie.releaseDate, isNotNull);
    expect(movie.title, isNotNull);
    expect(movie.posterPath, isNotNull);
    expect(movie.genreIds, isNotNull);
  });

  test('Testa instância movieModel', () {
    final jsonModel = jsonDecode(json) as Map<String, dynamic>;
    final movie = MovieModel.fromJson(jsonModel);
    expect(movie.id, isNotNull);
    expect(movie.overview, isNotEmpty);
    expect(movie.releaseDate, isNotEmpty);
    expect(movie.title, isNotEmpty);
    expect(movie.posterPath, isNotEmpty);
    expect(movie.genreIds, isNotEmpty);
  });
}

const json = """ {
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
    }""";
