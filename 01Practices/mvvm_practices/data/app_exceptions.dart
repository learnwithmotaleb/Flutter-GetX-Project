class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix $_message';
  }
}

class InternetException extends AppExceptions{
  InternetException([String? message]) : super(message, '');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]) : super(message, '');
}
class ServerException extends AppExceptions{
  ServerException([String? message]) : super(message, '');
}

class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? message]) : super(message, '');
}
class FetchDataException extends AppExceptions{
  FetchDataException([String? message]) : super(message, '');
}