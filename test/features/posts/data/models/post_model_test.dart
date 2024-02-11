import 'package:aamar_task/features/posts/data/models/post_model.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tPostModel = PostModel(
    id: 1,
    title: 'Test Title',
    body: 'Test Body',
    userId: 1,
    isFavourite: false,
  );

  final tPostJson = {
    'id': 1,
    'title': 'Test Title',
    'body': 'Test Body',
    'userId': 1,
    'isFavourite': false,
  };

  group('PostModel', () {
    test('should be a subclass of Post entity', () async {
      // assert
      expect(tPostModel, isA<Post>());
    });

    test('should return a valid model when calling fromJson', () async {
      // act
      final result = PostModel.fromJson(tPostJson);
      // assert
      expect(result, tPostModel);
    });

    test('should return a JSON map containing the proper data', () async {
      // act
      final result = tPostModel.toJson();
      // assert
      expect(result, tPostJson);
    });
  });
}