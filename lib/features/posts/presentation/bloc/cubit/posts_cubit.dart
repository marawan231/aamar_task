import 'package:aamar_task/core/network_service/network_exceptions.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_state.dart';
part 'posts_cubit.freezed.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit({required this.getAllPostsUseCase}) : super(PostsState.initial());

  final GetAllPostsUseCase getAllPostsUseCase;

  void loadPosts() async {
    emit(PostsState.loading());
    final result = await getAllPostsUseCase.execute();
    result.when(
      success: (posts) {
        emit(PostsState.loaded(posts));
      },
      failure: (message) {
        emit(PostsState.error(DioExceptionType.getErrorMessage(message)));
      },
    );
  }
}
