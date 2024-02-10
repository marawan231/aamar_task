import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubtitles extends StatelessWidget {
  const CustomSubtitles({super.key, required this.subtitle});
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
              subtitle.length > 100
                  ? subtitle.substring(0, 100) + '...'
                  : subtitle,
              style: getRegularStyle(
                color: ColorsManager.black,
                fontSize: 14.sp,
                height: 1.2.sp,
              ),
            );
  }
}