import 'package:aamar_task/core/network_service/api_result.dart';
import 'package:aamar_task/features/posts/domain/repositories/posts_repository.dart';

import '../entities/post.dart';

class GetAllPostsUseCase {
  final  PostsRepository postsRepository;

  GetAllPostsUseCase( this.postsRepository);

  Future<ApiResult<List<Post>>> execute() async {
    return await postsRepository.getAllPosts();
  }
}
