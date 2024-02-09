

import 'api_result.dart';
import 'network_exceptions.dart';

extension ErrorHandler<T extends Object> on Future<T> {
  Future<ApiResult<T>> handleCallbackWithFailure() async {
    try {
      final result = await this;
      return ApiResult.success(result);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}