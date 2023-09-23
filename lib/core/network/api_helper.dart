import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:getlinked_landing_page/core/constants/errors/exceptions.dart';

import '../constants/endpoints.dart';
import '../core.dart';

class ApiBaseHelper {
  BaseOptions options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: Duration(minutes: 60),
      //60sec
      receiveTimeout: Duration(minutes: 60),
      //60sec
      contentType: 'application/json',
      headers: {'Accept': '*/*'},
      validateStatus: (status) {
        return status! < 510;
      });

  late Dio _dio;

  ApiBaseHelper() {
    _dio = Dio(options);

    // add log interceptor if in debug mode
    // _dio.interceptors.add(RetryOnConnectionChangeInterceptor(dio: Dio()));
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
          request: true,
          logPrint: (e) => log("$e"),
          requestBody: true));
    }
  }

  Future<Response<dynamic>> get(String url, {String? token}) async {
    Response<dynamic> response;
    try {
      response = await _dio.get(
        url,
        options: _buildTokenOptions(token),
      );
    } on DioExceptionType catch (e) {
      throw ServerException.fromDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }

    return response;
  }

  Future<Response<dynamic>> post(String url, Map<String, dynamic>? requestBody,
      {String? token}) async {
    Response<dynamic> response;

    try {
      final bodyJson =
          requestBody == null ? requestBody : json.encode(requestBody);

      response = await _dio.post(url,
          data: bodyJson, options: _buildTokenOptions(token));
    } on DioExceptionType catch (e) {
      throw ServerException.fromDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
    return response;
  }

  Future<Response<dynamic>> postFile(String url,
      {required String token,
      required FormData formdata,
      }) async {
    Response<dynamic> response;

    try {
      response = await _dio.post(url,
          data: formdata,
          options: _buildTokenOptions(token));
    } on DioExceptionType catch (e) {
      throw ServerException.fromDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
    return response;
  }

  Future<Response<dynamic>> put(String url, Map<String, dynamic>? requestBody,
      {String? token}) async {
    Response<dynamic> response;

    try {
      final bodyJson =
          requestBody == null ? requestBody : json.encode(requestBody);
      response = await _dio.put(
        url,
        data: bodyJson,
        options: _buildTokenOptions(token),
      );
    } on DioExceptionType catch (e) {
      throw ServerException.fromDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
    return response;
  }

  Future<Response<dynamic>> delete(String url, {String? token}) async {
    Response<dynamic> response;

    try {
      response = await _dio.delete(url, options: _buildTokenOptions(token));
    } on DioExceptionType catch (e) {
      throw ServerException.fromDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
    return response;
  }

  Options? _buildTokenOptions(String? token) {
    return token != null
        ? Options(headers: {"authorization": "Bearer $token"})
        : null;
  }

  

  String getUnprocessedErrorMessage(Map<String, dynamic> errorMap) {
    var errors = errorMap.values.toList();
    return errors.join("\n");
  }
}

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final Dio dio;

  RetryOnConnectionChangeInterceptor({
    required this.dio,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldRetryOnHttpException(err)) {
      try {
        handler.resolve(await DioHttpRequestRetrier(dio: dio)
            .requestRetry(err.requestOptions)
            .catchError((e) {
          handler.next(err);
        }));
      } catch (e) {
        handler.next(err);
      }
    } else {
      handler.next(err);
    }
  }

  bool _shouldRetryOnHttpException(DioException err) {
    return err.type == DioExceptionType.unknown &&
        ((err.error is HttpException && err.message != null &&
            err.message!.contains(
                'Connection closed before full header was received')));
  }
}

/// Retrier
class DioHttpRequestRetrier {
  final Dio dio;

  DioHttpRequestRetrier({
    required this.dio,
  });

  Future<Response> requestRetry(RequestOptions requestOptions) async {
    return dio.request(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        contentType: requestOptions.contentType,
        headers: requestOptions.headers,
        sendTimeout: requestOptions.sendTimeout,
        receiveTimeout: requestOptions.receiveTimeout,
        extra: requestOptions.extra,
        followRedirects: requestOptions.followRedirects,
        listFormat: requestOptions.listFormat,
        maxRedirects: requestOptions.maxRedirects,
        method: requestOptions.method,
        receiveDataWhenStatusError: requestOptions.receiveDataWhenStatusError,
        requestEncoder: requestOptions.requestEncoder,
        responseDecoder: requestOptions.responseDecoder,
        responseType: requestOptions.responseType,
        validateStatus: requestOptions.validateStatus,
      ),
    );
  }
}
