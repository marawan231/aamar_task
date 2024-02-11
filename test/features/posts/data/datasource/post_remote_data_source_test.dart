import 'dart:convert';

import 'package:aamar_task/features/posts/data/datasources/remote/posts_remote_data_source_implemtnatation.dart';
import 'package:aamar_task/features/posts/data/models/post_model.dart';
// import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
//network exception
// import 'package:aamar_task/core/network_service/dio_exception_type.dart';

import '../../../../helper/json_reader.dart';
import '../../../../helper/test_helper.mocks.dart';

// @GenerateMocks([NetworkService])
void main() {
  late MockPostsApiServices mockNetworkService;
  late PostsRemoteDataSourceImplement postRepositoryImplementation;

  setUp(() {
    mockNetworkService = MockPostsApiServices();
    postRepositoryImplementation =
        PostsRemoteDataSourceImplement(mockNetworkService);
  });
  final List<dynamic> jsonMap =
      json.decode(readJson('helper/dummy_data/posts_dummy_data.json'));

  test('GetPosts should return posts without any exception', () async {
    //arrange
    when(postRepositoryImplementation.getAllPosts(limit: 10, page: 1))
        .thenAnswer(
            (_) async => jsonMap.map((e) => PostModel.fromJson(e)).toList());
    //act
    final result =
        await postRepositoryImplementation.getAllPosts(limit: 10, page: 1);

    //assert
    expect(result, equals(jsonMap.map((e) => PostModel.fromJson(e)).toList()));
  });
}
