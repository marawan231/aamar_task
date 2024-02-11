import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:aamar_task/features/posts/presentation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }

  _buildAppBar(BuildContext context) {
    return Container(
      decoration: _setDecoration(),
      child: Padding(
        padding: EdgeInsets.only(right: 30.sp, top: 16.sp, left: 30.sp),
        child: Column(
          children: [
            _buildTitle(),
            16.verticalSpace,
            CustomTextField(),
          ],
        ),
      ),
      // actions: _buildActions(),
      // leading: _buildLeading(),
    );
  }

  _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Posts',
          style: getBoldStyle(fontSize: 24.sp),
        ),
        //clear the cache
        // TextButton(
        //   onPressed: () {
        //     getIt<PostsManager>().removeAllPosts();
        //   },
        //   child: Text('Clear Cache'),
        // )
      ],
    );
  }

  _setDecoration() {
    return BoxDecoration(
      color: ColorsManager.white,
      border: Border.all(color: ColorsManager.black.withOpacity(0.5)),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(32.r),
        bottomRight: Radius.circular(32.r),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.sp);
}
