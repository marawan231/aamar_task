import 'package:aamar_task/core/di/dependency_injection.dart';
import 'package:aamar_task/core/network_service/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/app.dart';

/// The main function is the entry point of the Flutter application.
///
/// It first ensures the initialization of Flutter widgets and the screen size.
/// Then, it sets up the GetIt service locator for dependency injection.
///
/// After that, it sets the system UI overlay style, which includes the status bar color,
/// status bar icon brightness, status bar brightness, system navigation bar color,
/// and system navigation bar icon brightness.
///
/// It also sets the preferred orientations for the device to portrait up and portrait down.
///
/// Once the preferred orientations are set, it assigns an instance of `AppObserver` to the `Bloc.observer`,
/// which allows for observing all Bloc instances throughout the app.
///
/// Finally, it runs the app with `MyApp` as the root widget.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    Bloc.observer = AppObserver();
    runApp(MyApp());
  });
}
