import 'package:aamar_task/core/di/dependency_injection.dart';
import 'package:aamar_task/core/navigator/Constants/imports_constants.dart';
import 'package:aamar_task/features/posts/domain/entities/post.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:aamar_task/features/posts/presentation/pages/post_details_view.dart';
import 'package:aamar_task/features/posts/presentation/pages/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

/// `RouterGenerator` is a class responsible for generating routes in the application.
///
/// It contains a static instance of `PostsCubit` which is initialized in the constructor using the `getIt` function.
/// It also contains a static instance of `PageRouterBuilder` used for building routes.
class RouterGenerator {
  /// Static instance of `PostsCubit`.
  static late PostsCubit postsCubit;

  /// Constructor that initializes `postsCubit`.
  RouterGenerator() {
    postsCubit = getIt<PostsCubit>();
  }

  /// Static instance of `PageRouterBuilder`.
  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  /// Method that generates a route based on the provided `RouteSettings`.
  ///
  /// It first finds the `NamedRoutes` value that matches the name of the route in the `RouteSettings`.
  /// Then, it uses a switch statement to determine which route to generate based on the `NamedRoutes` value.
  ///
  /// If the `NamedRoutes` value is `NamedRoutes.posts`, it returns a route that leads to `PostsView` with `postsCubit` as the `BlocProvider`.
  /// If the `NamedRoutes` value is `NamedRoutes.postDetails`, it returns a route that leads to `PostDetailsView` with `postsCubit` as the `BlocProvider`.
  /// The `Post` object passed to `PostDetailsView` is retrieved from the arguments of the `RouteSettings`.
  ///
  /// If the `NamedRoutes` value does not match any case in the switch statement, it returns null.
  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.posts:
        return _pageRouter.build(
            transition: TransitionType.cupertino,
            BlocProvider.value(
              value: postsCubit,
              child: PostsView(),
            ),
            settings: settings);
      case NamedRoutes.postDetails:
        final args = settings.arguments as Map<String, dynamic>;
        final post = args['post'] as Post;

        return _pageRouter.build(
          transition: TransitionType.cupertino,
          BlocProvider.value(
            value: postsCubit,
            child: PostDetailsView(post: post),
          ),
        );
      default:
        return null;
    }
  }
}
