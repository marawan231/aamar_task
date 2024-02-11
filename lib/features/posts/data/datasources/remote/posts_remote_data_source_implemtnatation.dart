import 'package:aamar_task/features/posts/data/datasources/client/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/data/models/post_model.dart';

abstract class PostsRemoteDataSourceAbstract {
  Future<List<PostModel>> getAllPosts({required int limit, required int page});
}

class PostsRemoteDataSourceImplement implements PostsRemoteDataSourceAbstract {
  final PostsWebService postsWebService;

  PostsRemoteDataSourceImplement(this.postsWebService);

  @override
  Future<List<PostModel>> getAllPosts(
      {required int limit, required int page}) async {
    return await postsWebService.getAllPosts(limit, page);
  }
}
