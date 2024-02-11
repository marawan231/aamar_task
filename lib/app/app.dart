import 'package:aamar_task/core/internet/internet_connection_checker.dart';
import 'package:aamar_task/core/navigator/named_routes.dart';
import 'package:aamar_task/core/navigator/navigator.dart';
import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/core/theming/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// `MyApp` is a singleton StatefulWidget that serves as the root of the application.
///
/// It uses a factory constructor to ensure that only a single instance of `MyApp` exists.
class MyApp extends StatefulWidget {
  /// Private constructor used by the factory constructor.
  const MyApp._internal();

  /// The single instance of `MyApp`.
  static const MyApp _instance = MyApp._internal();

  /// Factory constructor that returns the single instance of `MyApp`.
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

/// `_MyAppState` is the State object for `MyApp`.
///
/// It contains a `RouterGenerator` for generating routes in the application.
class _MyAppState extends State<MyApp> {
  /// The `RouterGenerator` used for generating routes.
  RouterGenerator routeGenerator = RouterGenerator();

  @override
  Widget build(BuildContext context) {

    /// Returns a `ScreenUtilInit` widget that initializes screen adaptation.
    ///
    /// The `builder` returns a `MaterialApp` widget that uses the `RouterGenerator` to generate routes,
    /// sets the theme, navigator key, and initial route of the application.
    ///
    /// The `builder` of the `MaterialApp` returns a `MediaQuery` widget that modifies the `textScaleFactor`
    /// of the current `MediaQueryData` to linearly scale the text in the application.
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: routeGenerator.getRoute,
              theme: appTheme,
              navigatorKey: Go.navigatorKey,
              initialRoute: NamedRoutes.posts.routeName,
             builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: TextScaler.linear(1.0)),
                  child: InternetConnectionChecker(
                    child: child!,
                  ),
                );
              });
        });
  }
}
