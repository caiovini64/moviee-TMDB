import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:tmdb_api/app/utils/network/api_base.dart';
import 'package:tmdb_api/app/utils/network/exceptions/bad_request_exception.dart';
import 'package:tmdb_api/app/utils/network/exceptions/fetch_exceptions.dart';

import '../localization.dart';
import 'exceptions/unauthorized_exception.dart';

class HttpClient {
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(apiBase + url + '?api_key=$apiKey&language=${Localization.locale()}'));
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }


dynamic _response(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = json.decode(response.body.toString());
      return (responseJson);
    case 401:
      throw UnauthorizedException(response.body.toString());
    case 404:
      throw BadRequestException(response.body.toString());
    default:
      throw FetchDataException('${response.statusCode} ' +
          'Error occured while Communication with server');
  }
}
}
