import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingItems extends StatelessWidget {
  const LoadingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        itemBuilder: (context, index) => ShimmerContainer(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemCount: 10);
  }
}

class ShimmerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 120,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: 100.sp,
                height: 10.sp,
                color: Colors.grey[300],
                margin: EdgeInsets.only(bottom: 8),
              ),
            ),
            Container(
              width: 250.sp,
              height: 10.sp,
              color: Colors.grey[300],
            ),
            8.verticalSpace,
            Container(
              width: 250.sp,
              height: 10.sp,
              color: Colors.grey[300],
            ),
            8.verticalSpace,
            Container(
              width: 250.sp,
              height: 10.sp,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
