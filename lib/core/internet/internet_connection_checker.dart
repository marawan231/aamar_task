import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class InternetConnectionChecker extends StatefulWidget {
  final Widget? child;

  const InternetConnectionChecker({super.key, this.child});

  @override
  State<InternetConnectionChecker> createState() =>
      _InternetConnectionCheckerState();
}

class _InternetConnectionCheckerState extends State<InternetConnectionChecker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        if (connectivity == ConnectivityResult.none) {
          // showErrorSnackBar(message: 'asdasdadsdasd', context: context);
          return child;
        } else {
          RouterGenerator.postsCubit.emptyState;
          return child;
        }
      },
      builder: (BuildContext context) {
        return widget.child!;
      },
    );
  }
}
