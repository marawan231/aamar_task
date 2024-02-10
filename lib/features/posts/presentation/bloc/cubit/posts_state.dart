part of 'posts_cubit.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;

  const factory PostsState.loading() = _Loading;

  const factory PostsState.loaded(List<Post> posts) = _Loaded;
  const factory PostsState.error(String message) = _Error;
  //start searching
  const factory PostsState.searching() = _Searching;
  //searched posts
  const factory PostsState.searched(List<Post> posts) = _Searched;
  //start favorite
  const factory PostsState.favouriteLoading() = _FavouriteLoading;
  //favorite posts
  const factory PostsState.favourite(List<Post> posts) = _Favourite;
}
