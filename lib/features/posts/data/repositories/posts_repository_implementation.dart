//implement the interface  BillPaymentCategoriesRepository
// ignore_for_file: unnecessary_null_comparison

import 'package:aamar_task/core/di/dependency_injection.dart';
import 'package:aamar_task/core/helpers/local_database_helper.dart';
import 'package:aamar_task/core/network_service/api_result.dart';
import 'package:aamar_task/core/network_service/network_exceptions.dart';
import 'package:aamar_task/features/posts/data/datasources/client/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/data/datasources/remote/posts_remote_data_source_implemtnatation.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/domain/repositories/posts_repository.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';

/// `PostRepositoryImplementation` is a class that implements `PostsRepository`.
///
/// It uses a `PostsWebService` to fetch posts from a web service.
class PostRepositoryImplementation extends PostsRepository {
  /// The `PostsWebService` used to fetch posts.
  final PostsRemoteDataSourceAbstract postsWebService;

  /// Constructor that initializes `postsWebService`.
  PostRepositoryImplementation(this.postsWebService);

  /// Method that fetches all posts from the web service.
  ///
  /// It takes a `limit` and a `page` as parameters, which are used to determine how many posts to fetch and from which page.
  ///
  /// It first fetches the posts from the web service and then fetches the saved posts from `PostsManager`.
  ///
  /// If the saved posts are empty, equal to an empty list, null, or if `isLoadingMore` is true, it increments `pages`, sets `isLoadingMore` to false, and returns the fetched posts.
  /// Otherwise, it sets `pages` to the integer division of the length of the saved posts by 10 plus 1, sets `isLoadingMore` to false, and returns the saved posts.
  ///
  /// If an error occurs during the fetching of posts, it returns a `Future` that completes with `ApiResult.failure` and the error.
  @override
  Future<ApiResult<List<Post>>> getAllPosts(
      {required int limit, required int page}) async {
    // pages = page;
    try {
      List<Post> response =
          await postsWebService.getAllPosts(limit: limit, page: page);

      List<Post> savedResponse = await getIt<PostsManager>().getPosts();

      if ((savedResponse.isEmpty ||
          savedResponse == [] ||
          savedResponse == null ||
          isLoadingMore)) {
        pages++;
        isLoadingMore = false;
        return ApiResult.success(response);
      } else {
        pages = (savedResponse.length ~/ 10) + 1;
        isLoadingMore = false;
        return ApiResult.success(savedResponse);
      }
    } catch (error, stacktrace) {
      return Future.value(
        ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace),
        ),
      );
    }
  }
}
