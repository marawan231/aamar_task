import 'package:aamar_task/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  //choose language cubit
  // static late ChooseLanguageCubit chooseLanguageCubit;
  //on boarding cubit
  // static late OnboardingCubit onboardingCubit;

  RouterGenerator() {
 
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(const SplashView(), settings: settings);
    
    }
  }
}
