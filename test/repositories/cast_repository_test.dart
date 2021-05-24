import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:tmdb_api/app/data/repositories/cast_repository.dart';
import 'package:tmdb_api/app/data/services/cast_services.dart';
import 'package:http/http.dart' as http;

import '../mocks/mock_client.dart';

void main() {
  final mockClient = MockClient();
  final castRepository = CastRepository(CastService(client: mockClient));
  test('Testa conexao de cast com service', () async {
    final list = await castRepository.getAllCast(550);
    expect(list, isA<Map>());
    expect(list.first.name, equals('Edward Norton'));
  });
}
