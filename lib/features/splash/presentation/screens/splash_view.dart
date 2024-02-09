// import 'dart:async';

// import 'package:aamar_task/core/res/assets_manager.dart';
// import 'package:aamar_task/core/theming/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView>
//     with SingleTickerProviderStateMixin {
//   late Timer _timer;
//   late AnimationController _controller;
//   late Animation<Offset> _offsetAnimation;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     _timer = Timer(const Duration(seconds: 2), _goNext);
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..forward();

//     _offsetAnimation = Tween<Offset>(
//       begin: const Offset(0.0, 1.0),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeOut,
//     ));

//     _fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     ));
//   }

//   void _goNext() async {
//     _timer.cancel();
//     // await Go.offAllNamed(NamedRoutes.chooseAppLanguage);
//     // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
//     //     overlays: SystemUiOverlay.values);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsManager.white,
//       body: Center(
//         child: SlideTransition(
//           position: _offsetAnimation,
//           child: FadeTransition(
//             opacity: _fadeAnimation,
//             child: Image.asset(
//               AssetsManager.appLogo,
//               fit: BoxFit.cover,
//               width: 322.sp,
//               height: 322.sp,
//             ),
//           ),
//         ),
//       ),

//       // body: Image.asset(AssetsManager.splashView,
//       // fit: BoxFit.cover, width: double.infinity, height: double.infinity),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();

//     super.dispose();
//   }
// }
import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    RouterGenerator.postsCubit.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PostsCubit, PostsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, loaded: (posts) {
          return ListView.separated(
            itemBuilder: (context, index) =>
                ListTile(title: Text(posts[index].title ?? '')),
            separatorBuilder: (context, index) => Divider(),
            itemCount: posts.length,
          );
        }, error: (message) {
          return Center(
            child: Text(message),
          );
        });
      },
    ));
  }
}
