import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

const mockCast =
    '{"adult":false,"gender":2,"id":819,"known_for_department":"Acting","name":"Edward Norton","original_name":"Edward Norton","popularity":6.728,"profile_path":"/5XBzD5WuTyVQZeS4VI25z2moMeY.jpg","cast_id":4,"character":"The Narrator","credit_id":"52fe4250c3a36847f80149f3","order":0}';
