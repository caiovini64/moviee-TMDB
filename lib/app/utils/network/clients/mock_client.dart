import 'package:mockito/mockito.dart';
import 'package:http/http.dart';
import 'package:tmdb_api/app/utils/network/connection_client.dart';

class MockClient extends Mock implements Client {
  // @override
  // void start(int? port) =>
  //     super.noSuchMethod(Invocation.method(#start, [port]));

}

class MockClient2 implements ConnectionClient {
  // @override
  // void start(int? port) =>
  //     super.noSuchMethod(Invocation.method(#start, [port]));

  @override
  Future get(_) async {
    // TODO: implement get
    return Response('{}', 200);
  }

  @override
  // TODO: implement client
  get client => throw UnimplementedError();
}
