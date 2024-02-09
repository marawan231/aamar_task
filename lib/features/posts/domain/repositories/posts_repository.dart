import 'package:aamar_task/features/posts/domain/entities/post.dart';

import '../../../../core/network_service/api_result.dart';

abstract class PostsRepository {
  Future<ApiResult<List<Post>>> getAllPosts();
}
