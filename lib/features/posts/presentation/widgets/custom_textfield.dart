import 'package:aamar_task/core/navigator/route_generator.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildSearchTextfield(context);
  }

  _buildSearchTextfield(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
          color: ColorsManager.grey, borderRadius: BorderRadius.circular(16.r)),
      child: TextField(
        onChanged: (value) {
          RouterGenerator.postsCubit.searchPosts(value);
        },
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
