
class AppException implements Exception {
  final String? _message;
  final String? _prefix;
  AppException([this._message,this._prefix]);

  @override
  String toString() {
    return '$_prefix $_message';
  }
}

class NoInternetException extends AppException {
  NoInternetException([String? message]) : super(message, 'No Internet: ');
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, 'Error During Communication: ');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid Request: ');
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message, 'Unauthorised: ');
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, 'Path Found: ');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Server Error: ');
}


class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}



