import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtitle extends StatelessWidget {
  const Customtitle({super.key, required this.title, this.isDetails});

  final String title;
  final bool? isDetails;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        title,
        maxLines: isDetails! ? 4 : 2,
        overflow: TextOverflow.ellipsis,
        style: getBoldStyle(
          color: ColorsManager.black,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
