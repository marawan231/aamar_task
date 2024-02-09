import 'package:aamar_task/core/constants/values.dart';
import 'package:aamar_task/features/posts/data/models/post_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'post_remote_data_source.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class PostsWebService {
  factory PostsWebService(Dio dio, {String baseUrl}) = _PostsWebService;

  @GET("posts")
  Future<List<PostModel>> getAllPosts();
}
