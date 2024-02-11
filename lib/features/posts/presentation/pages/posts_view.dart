import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/core/utils/utils.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:aamar_task/features/posts/presentation/widgets/custom_appbar.dart';
import 'package:aamar_task/features/posts/presentation/widgets/loading_items.dart';
import 'package:aamar_task/features/posts/presentation/widgets/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// `PostsView` is a stateful widget that displays a list of posts.
///
/// It uses a `BlocBuilder` to build the list of posts based on the state of the `PostsCubit`.
/// It also has a `ScrollController` that loads more posts when the user scrolls to the end of the list.
class PostsView extends StatefulWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadPosts();
    _setupScrollListener();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => _buildLoadingPostsCase(),
              loaded: (posts) =>
                  _buildList(RouterGenerator.postsCubit.loadedPosts),
              favouriteLoading: () => _buildList(
                RouterGenerator.postsCubit.loadedPosts,
              ),
              favourite: (posts) => _buildList(posts),
              searched: (posts) => _buildList(posts),
              error: (message) => _buildErrorCase(message),
              orElse: () => _buildDefaultCase(),
            );
          },
        ),
      ),
    );
  }

  /// Builds a `PostsList` widget with the given posts.
  Widget _buildList(List<Post> posts) {
    return PostsList(posts: posts, scrollController: scrollController);
  }

  /// Builds a loading indicator or a list of posts depending on whether there are any loaded posts.
  Widget _buildLoadingPostsCase() {
    return RouterGenerator.postsCubit.loadedPosts.isEmpty
        ? LoadingItems()
        : _buildList(RouterGenerator.postsCubit.loadedPosts);
  }

  /// Shows an error snackbar and builds a list of posts.
  Widget _buildErrorCase(String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showErrorSnackBar(message: message, context: context);
    });
    return _buildList(RouterGenerator.postsCubit.loadedPosts);
  }

  /// Builds a default loading indicator.
  Widget _buildDefaultCase() {
    return const Center(child: CircularProgressIndicator());
  }

  /// Sets up a scroll listener that loads more posts when the user scrolls to the end of the list.
  void _setupScrollListener() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        RouterGenerator.postsCubit.state.maybeWhen(
          error: (message) => _loadMorePosts(),
          orElse: () => _loadMorePosts(),
        );
      }
    });
  }

  /// Loads the initial posts.
  void _loadPosts() {
    RouterGenerator.postsCubit.loadPosts(limit: 10);
  }

  /// Loads more posts.
  void _loadMorePosts() {
    isLoadingMore = true;
    RouterGenerator.postsCubit.loadPosts(limit: 10);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
