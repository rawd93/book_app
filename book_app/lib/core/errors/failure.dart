import 'package:book_app/core/Utiles/function/save_data_Local.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return (ServerFailure(
          'connectionTimeout with Api Server',
        ));
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout with Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResonse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request To Api cancled');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an error');
    }
  }
  factory ServerFailure.fromResonse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('request not found ,please try later');
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem  with server,please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('opps There was An error,please try again');
    }
  }
}
