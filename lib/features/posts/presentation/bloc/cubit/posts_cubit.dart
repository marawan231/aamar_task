import 'package:aamar_task/core/di/dependency_injection.dart';
import 'package:aamar_task/core/helpers/local_database_helper.dart';
import 'package:aamar_task/core/navigator/navigator.dart';
import 'package:aamar_task/core/network_service/network_exceptions.dart';
import 'package:aamar_task/core/utils/utils.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_state.dart';
part 'posts_cubit.freezed.dart';

int pages = 1;
bool isLoadingMore = false;

class PostsCubit extends Cubit<PostsState> {
  PostsCubit({required this.getAllPostsUseCase}) : super(PostsState.initial());

  final GetAllPostsUseCase getAllPostsUseCase;
  List<Post> loadedPosts = [];
  List<Post> searchedPosts = [];

  void loadPosts({required int limit}) async {
    if (searchedPosts.isEmpty || searchedPosts == []) {
      emit(PostsState.loading());
      final result = await getAllPostsUseCase.execute(
        limit: limit,
        page: pages,
      );
      result.when(
        success: (posts) async {
          List<Post> getPosts = await getIt<PostsManager>().getPosts();
          getPosts.isEmpty
              ? await getIt<PostsManager>().savePosts(posts)
              : null;

          posts.isEmpty
              ? WidgetsBinding.instance.addPostFrameCallback((_) {
                  showErrorSnackBar(
                      message: 'No more posts to load',
                      context: Go.navigatorKey.currentContext!);
                })
              : null;
          // await getIt<PostsManager>().savePosts(posts);

          loadedPosts.addAll(posts);

          emit(PostsState.loaded(posts));
        },
        failure: (message) async {
          if (message == DioExceptionType.noInternetConnection()) {
            // await getIt<PostsManager>().savePosts(loadedPosts);

            //get from local storage
            List<Post> getPosts = await getIt<PostsManager>().getPosts();
            loadedPosts = getPosts;
            // pages++;

            emit(PostsState.error(DioExceptionType.getErrorMessage(message)));
            // emit(PostsState.loaded(getPosts));
          } else {
            List<Post> getPosts = await getIt<PostsManager>().getPosts();
            loadedPosts = getPosts;
            // pages++;
            emit(PostsState.error(DioExceptionType.getErrorMessage(message)));
          }
        },
      );
    }
  }

  //searching posts
  void searchPosts(String? query) {
    emit(PostsState.searching());
    (query == null || query.isEmpty)
        ? {searchedPosts = [], emit(PostsState.searched(loadedPosts))}
        : {
            searchedPosts = loadedPosts
                .where((element) =>
                    element.title!.toLowerCase().contains(query.toLowerCase()))
                .toList(),
            emit(PostsState.searched(
                searchedPosts == [] ? loadedPosts : searchedPosts))
          };
  }

  //toggleFavourite
  void toggleFavourite(Post item) async {
    item.isFavourite == null ? item.isFavourite = false : item.isFavourite;
    emit(PostsState.favouriteLoading());
    item.isFavourite = !item.isFavourite!;
    await getIt<PostsManager>().savePosts(loadedPosts);

    List<Post> getPosts = await getIt<PostsManager>().getPosts();
    loadedPosts = getPosts;
    emit(PostsState.favourite(searchedPosts.isEmpty
        ? loadedPosts
        : searchedPosts.isEmpty
            ? loadedPosts
            : searchedPosts));

    // emit(PostsState.favourite(loadedPosts));
  }

  //empty state
  void emptyState() {
    emit(PostsState.initial());
  }
}
