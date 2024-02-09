part of 'posts_cubit.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;
  const factory PostsState.loading() = _Loading;
  const factory PostsState.loaded(List<Post> posts) = _Loaded;
  const factory PostsState.error(String message) = _Error;
}
