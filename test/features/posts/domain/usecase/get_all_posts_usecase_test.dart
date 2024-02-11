import 'package:aamar_task/core/network_service/api_result.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import '../../../../helper/test_helper.mocks.dart';

void main() {
  late MockPostsRepository mockPostsRepository;
  late GetAllPostsUseCase getAllPostsUseCase;

  setUp(() {
    mockPostsRepository = MockPostsRepository();
    getAllPostsUseCase = GetAllPostsUseCase(mockPostsRepository);
  });

  List<Post> posts = [
    Post(
      id: 1,
      title: 'title',
      body: 'body',
      userId: 1,
      isFavourite: false,
    ),
  ];

  test(
    'should send otp from the repository',
    () async {
      // arrange
      when(mockPostsRepository.getAllPosts(limit: 10, page: 1))
          .thenAnswer((_) async => ApiResult.success(posts));
      // act
      final result = await getAllPostsUseCase.execute(limit: 10, page: 1);

      // assert
      expect(result, equals(ApiResult.success(posts)));
    },
  );
}
