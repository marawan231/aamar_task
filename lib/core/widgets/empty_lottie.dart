import 'package:aamar_task/core/res/assets_manager.dart';
import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class EmptyLottie extends StatelessWidget {
  const EmptyLottie({Key? key, this.message, this.height = 300, this.icon})
      : super(key: key);
  final String? message;
  final double height;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Lottie.asset(
            icon ?? AssetsManager.emptySearch,
            height: height,
          ),
        ),
        Text(message ?? 'No data found',
            textAlign: TextAlign.center,
            style: getBoldStyle(fontSize: 20.sp, color: ColorsManager.primary)),
      ],
    );
  }
}
