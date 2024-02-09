import 'package:aamar_task/core/di/dependency_injection.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:aamar_task/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  //choose language cubit
  // static late ChooseLanguageCubit chooseLanguageCubit;
  //on boarding cubit
  // static late OnboardingCubit onboardingCubit;
//posts cubit
  static late PostsCubit postsCubit;
  RouterGenerator() {
    // chooseLanguageCubit = getIt<ChooseLanguageCubit>();
    // onboardingCubit = getIt<OnboardingCubit>();
    postsCubit = getIt<PostsCubit>();
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(
            BlocProvider.value(
              value: postsCubit,
              child: SplashView(),
            ),
            settings: settings);
    }
  }
}
