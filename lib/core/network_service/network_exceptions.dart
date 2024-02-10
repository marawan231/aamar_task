import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class DioExceptionType with _$DioExceptionType {
  const factory DioExceptionType.requestCancelled() = RequestCancelled;

  const factory DioExceptionType.unauthorizedRequest() = UnauthorizedRequest;

  const factory DioExceptionType.badRequest() = BadRequest;

  const factory DioExceptionType.badResponse() = BadResponse;

  const factory DioExceptionType.notFound() = NotFound;

  const factory DioExceptionType.methodNotAllowed() = MethodNotAllowed;

  const factory DioExceptionType.notAcceptable() = NotAcceptable;

  const factory DioExceptionType.requestTimeout() = RequestTimeout;

  const factory DioExceptionType.sendTimeout() = SendTimeout;

  const factory DioExceptionType.unprocessableEntity() = UnprocessableEntity;

  const factory DioExceptionType.conflict() = Conflict;

  const factory DioExceptionType.internalServerError() = InternalServerError;

  const factory DioExceptionType.notImplemented() = NotImplemented;

  const factory DioExceptionType.serviceUnavailable() = ServiceUnavailable;

  const factory DioExceptionType.noInternetConnection() = NoInternetConnection;

  const factory DioExceptionType.formatException() = FormatException;

  const factory DioExceptionType.unableToProcess() = UnableToProcess;

  const factory DioExceptionType.defaultError() = DefaultError;

  static DioExceptionType handleResponse(Response? response) {
    log("handleResponse" + response.toString());
    // GenericErrorModel errorModel = GenericErrorModel.fromJson(response?.data);

    int statusCode = response?.statusCode ?? 0;

    switch (statusCode) {
      case 400:
        log('400');
        return DioExceptionType.badRequest();
      case 401:
        return DioExceptionType.unauthorizedRequest();
      case 403:
        log('403');

        return DioExceptionType.unauthorizedRequest();
      case 404:
        log('404');
        // log(response.toString());
        // log(response?.data['message']);

        // log("errorModel.errors?.first.message ${errorModel.errors?.first.message.toString()}");
        return DioExceptionType.notFound();

      case 409:
        log('409');

        return DioExceptionType.conflict();
      case 408:
        log('408');

        return const DioExceptionType.requestTimeout();
      case 422:
        log('422');
        return DioExceptionType.unprocessableEntity();
      case 500:
        log('500');
        return const DioExceptionType.internalServerError();
      case 503:
        log('503');
        return const DioExceptionType.serviceUnavailable();
      default:
        // var responseCode = statusCode;
        return DioExceptionType.defaultError();
    }
  }

  static DioExceptionType getDioException(error, [stackTrace]) {
    if (error is Exception) {
      try {
        if (error is DioException) {
          log('getDioException' + error.type.name.toString());

          switch (error.type.name) {
            case "badResponse":
              return DioExceptionType.handleResponse(error.response);
            case "sendTimeout":
              return const DioExceptionType.sendTimeout();
            case "requestTimeout":
              return const DioExceptionType.requestTimeout();
            case "notFound":
              return DioExceptionType.notFound();
            case "unauthorized":
              return DioExceptionType.unauthorizedRequest();
            //connection error
            case "connectionError":
              return const DioExceptionType.noInternetConnection();

            case "unhandled":
              return DioExceptionType.defaultError();

            //connection error
            case "connectionTimeout":
              return const DioExceptionType.noInternetConnection();

            default:
              return DioExceptionType.defaultError();
          }
        }
      } catch (e) {
        log('catch');
        return DioExceptionType.defaultError();
      }
    } else if (error is SocketException) {
      log('socket');
      return const DioExceptionType.noInternetConnection();
    } else {
      log('else');
      return DioExceptionType.defaultError();
    }
    return DioExceptionType.defaultError();
  }

  static String getErrorMessage(DioExceptionType networkExceptions) {
    return networkExceptions.when(
      notImplemented: () => "Not Implemented",
      requestCancelled: () => "Request Cancelled",
      internalServerError: () => "Internal Server Error",
      notFound: () => "Not Found",
      serviceUnavailable: () => "Service unavailable",
      methodNotAllowed: () => "Method Allowed",
      badRequest: () => "Bad Request",

      badResponse: () => "Bad Response",
      unauthorizedRequest: () => "Unauthorized Request",
      unprocessableEntity: () => "Unprocessable Entity",
      // unknown: () => "Unexpected error occurred",
      requestTimeout: () => "Connection request timeout",
      sendTimeout: () => "Connection send timeout",
      notAcceptable: () => "Not Acceptable",
      conflict: () => "Conflict",
      noInternetConnection: () => "No Internet Connection",
      formatException: () => "Format Exception",
      // unableToProcess: () => "Unable to process the data",

      unableToProcess: () => "Something went wrong",
      defaultError: () => "Something went wrong",
    );
  }
}
