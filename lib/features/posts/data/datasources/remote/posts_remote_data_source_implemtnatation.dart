import 'package:aamar_task/features/posts/data/datasources/client/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/data/models/post_model.dart';

/// `PostsRemoteDataSourceAbstract` is an abstract class that defines the contract for a data source that fetches posts from a remote server.
///
/// It has one method: `getAllPosts`, which fetches a list of posts.
abstract class PostsRemoteDataSourceAbstract {
  Future<List<PostModel>> getAllPosts({required int limit, required int page});
}

/// `PostsRemoteDataSourceImplement` is a class that implements `PostsRemoteDataSourceAbstract`.
///
/// It uses a `PostsWebService` to fetch the posts from the remote server.
class PostsRemoteDataSourceImplement implements PostsRemoteDataSourceAbstract {
  // The web service that this data source uses to fetch posts.
  final PostsWebService postsWebService;

  // Constructor for `PostsRemoteDataSourceImplement`.
  PostsRemoteDataSourceImplement(this.postsWebService);

  @override
  Future<List<PostModel>> getAllPosts(
      {required int limit, required int page}) async {
    // Fetch the posts from the web service and return them.
    return await postsWebService.getAllPosts(limit, page);
  }
}
  