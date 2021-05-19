class CustomException implements Exception{
  final _message;
  final _prefix;

  const CustomException(this._message, this._prefix);

  String toString(){
    return '$_prefix$_message';
  }
}