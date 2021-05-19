import 'package:tmdb_api/app/utils/network/exceptions/custom_exception.dart';

class FetchDataException extends CustomException{
  FetchDataException([ String? message]):super(message, 'Error during Commnunication: ');

}