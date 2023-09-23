import 'package:dio/dio.dart';

import '../strings.dart';

class ServerException implements Exception {
  String message = "";
  ServerException(this.message) : super();

  // Customised error messages from dioError
  ServerException.fromDioError(DioExceptionType dioError) {
    switch (dioError) {
      case DioExceptionType.cancel:
        message = Strings.connectionCancelled;
        break;

      case DioExceptionType.unknown:
        message = Strings.noInternet;
        break;

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        message = Strings.connectionTimeOut;
        break;

      default:
        message = "Something went wrong";
        break;
    }
  }

  @override
  String toString() {
    return message;
  }
}

class CacheException implements Exception {
  String message;
  CacheException(this.message) : super();

  @override
  String toString() {
    return message;
  }
}
