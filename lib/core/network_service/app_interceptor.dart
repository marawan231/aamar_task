// import 'package:dio/dio.dart';
// import 'package:tenten_pay/core/helpers/secure_storage.dart';
// import 'package:tenten_pay/core/navigator/named_routes.dart';
// import 'package:tenten_pay/core/navigator/navigator.dart';
// import 'package:tenten_pay/core/services/service_locator.dart';
// import 'package:tenten_pay/core/settings.dart';
// import 'package:tenten_pay/core/utils/utils_functions.dart';
// import 'package:tenten_pay/feature/auth/sign_in/data/datasources/refresh_token_api_service.dart';
// import 'package:tenten_pay/feature/auth/sign_in/data/models/response/refresh_token_response_model.dart';
//
// import '../helpers/language_controller.dart';
// import 'dio_setup.dart';
//
// class AppInterceptors extends Interceptor {
//   final Dio client;
//   bool isRefreshingToken = false; // Flag to track if token refresh is in progress
//
//   AppInterceptors({required this.client});
//
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     super.onRequest(options, handler);
//   }
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     super.onResponse(response, handler);
//   }
//
//   @override
//   Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
//       // Attempt to refresh the token
//        refreshToken();
//       // If the token refresh is successful, retry the original request
//       return handler.resolve(await retry(err.requestOptions));
//     }
//   }
//
//   Future<Response<dynamic>> retry(RequestOptions requestOptions) async {
//     print('12312312312312312312');
//     final options = Options(
//       method: requestOptions.method,
//       headers: requestOptions.headers,
//     );
//     return client.request<dynamic>(requestOptions.path,
//         data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
//   }
//
//   Future<void> refreshToken() async {
//     final refreshToken = await sl<SecureStorage>().get(key: 'refreshToken');
//     String url = ('${AppSettings.kSsoServiceBaseUrl}sso/refresh-token');
//     print('33333333333333333333333333333333333333');
//
//     // Check Dio request before Retrofit call
//     print('Refreshing token...');
//
//     // Uncomment this section to see Dio headers and options
//     print('Dio Headers: ${client.options.headers}');
//     print('Dio Options: ${client.options.baseUrl}');
//
//     //try {
//     final response = await dio.post(
//       url,
//       data: {
//         "refreshToken": refreshToken,
//       },
//     );
//
//     // try {
//     //   final response = await sl<RefreshTokenApiServices>().refresh({'refreshToken': refreshToken});
//     //
//     //   print('00000000000000000000000000000000000000');
//     //   print('999999999999999999999999');
//     //   if (response.data != null) {
//     //     await Utils.saveTokensFromRefresh(response.data!);
//     //     return true;
//     //   } else {
//     //     print('22222222222222222222222');
//     //     Utils.clearAllSavedData();
//     //     Go.offAllNamed(NamedRoutes.onBoarding);
//     //     return false;
//     //   }
//     // } catch (error) {
//     //   print('errrrrrrrrrrrrrrrrrrrrrr');
//     //   return false;
//     // }
//     // return false;
//   }
//
//   // static Map<String, String> dioHeaders() {
//   //   Map<String, String> headerMap = {
//   //     'deviceid': deviceId??'',
//   //     'countrycode': '+20',
//   //     'phonenumber': phoneNumber??'',
//   //     'accesstoken': token!,
//   //     'Accept-Language': lang!.languageCode,
//   //   };
//   //   return headerMap;
//   // }
// }
