import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/widgets/loading_items.dart';
import 'package:aamar_task/features/posts/presentation/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/empty_lottie.dart';

/// `PostsList` is a stateless widget that displays a list of posts.
///
/// It takes a list of `Post` objects and a `ScrollController` as parameters.
/// If the list of posts is empty, it displays an `EmptyLottie` widget.
/// Otherwise, it displays a `ListView` of posts.
///
/// The `ListView` is wrapped in a `RefreshIndicator` that reloads the posts when the user performs a pull-to-refresh gesture.
class PostsList extends StatelessWidget {
  const PostsList(
      {Key? key, required this.posts, required this.scrollController})
      : super(key: key);

  final List<Post> posts;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return posts.isEmpty
        ? EmptyLottie()
        : ListView.separated(
            controller: scrollController,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            itemBuilder: _buildPostItem,
            separatorBuilder: (context, index) =>
                SizedBox(height: 16), //add space between items
            itemCount: _getItemCount(),
          );
  }

  /// Builds a post item for the given index.
  ///
  /// If the index is equal to the length of the posts and there are no searched posts and no error, it displays a loading indicator.
  /// Otherwise, it displays a `PostItem` for the post at the given index.
  Widget _buildPostItem(BuildContext context, int index) {
    if (index == posts.length &&
        RouterGenerator.postsCubit.searchedPosts.isEmpty &&
        _isNoError()) {
      return posts.length == 100 ? SizedBox.shrink() : ShimmerContainer();
    }
    return PostItem(post: posts[index]);
  }

  /// Returns the item count for the list view.
  ///
  /// If there are no searched posts and no error, it returns the length of the posts plus 1.
  /// Otherwise, it returns the length of the posts.
  int _getItemCount() {
    return RouterGenerator.postsCubit.searchedPosts.isEmpty && _isNoError()
        ? posts.length + 1
        : posts.length;
  }

  /// Checks if there is no error in the posts cubit state.
  bool _isNoError() {
    return RouterGenerator.postsCubit.state.maybeWhen(
      error: (message) => false,
      orElse: () => true,
    );
  }
}
