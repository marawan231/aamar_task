import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final Dio dio = Dio();

String? token;
String? deviceId;
String? phoneNumber;
String? userId;

Dio setupDio() {
  dio
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);
  //..options.baseUrl = AppConstants.baseUrl

  // ));

  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      logPrint: print, // specify log function (optional)
      retries: 3, // retry count (optional)
      retryDelays: const [
        // set delays between retries (optional)
        Duration(seconds: 1), // wait 1 sec before the first retry
        Duration(seconds: 2), // wait 2 sec before the second retry
        Duration(seconds: 3), // wait 3 sec before the third retry
      ],
    ),
  );

  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      error: true,
      // logPrint: (object) => log(object.toString()),
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
      request: true,
    ),
  );

  return dio;
}
