import 'package:tmdb_api/app/utils/network/exceptions/custom_exception.dart';

class UnauthorizedException extends CustomException{
  UnauthorizedException([ String? message]):super(message, 'Invalid Request: ');

}