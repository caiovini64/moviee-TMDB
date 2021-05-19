import 'package:tmdb_api/app/utils/network/exceptions/custom_exception.dart';

class BadRequestException extends CustomException{
  BadRequestException([ String? message]):super(message, 'Invalid Request: ');

}