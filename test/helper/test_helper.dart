import 'package:aamar_task/features/posts/data/datasources/client/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/data/datasources/remote/posts_remote_data_source_implemtnatation.dart';
import 'package:aamar_task/features/posts/data/repositories/posts_repository_implementation.dart';
import 'package:aamar_task/features/posts/domain/repositories/posts_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  PostsRepository,
  PostsRemoteDataSourceAbstract,
  PostRepositoryImplementation
], customMocks: [
  MockSpec<PostsWebService>(as: #MockPostsApiServices)
])
void main() {}
