//implement the interface  BillPaymentCategoriesRepository

import 'package:aamar_task/core/network_service/api_result.dart';
import 'package:aamar_task/core/network_service/network_exceptions.dart';
import 'package:aamar_task/features/posts/data/datasources/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/domain/repositories/posts_repository.dart';

class PostRepositoryImplementation implements PostsRepository {
  final PostsWebService postsWebService;

  PostRepositoryImplementation(this.postsWebService);

  @override
  Future<ApiResult<List<Post>>> getAllPosts() async {
    try {
      var response = await postsWebService.getAllPosts();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return Future.value(ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace)));
    }
  }
}
