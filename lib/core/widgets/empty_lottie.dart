import 'package:aamar_task/core/res/assets_manager.dart';
import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

/// `EmptyLottie` is a [StatelessWidget] that displays a Lottie animation and a message.
///
/// It is typically used to indicate that there is no data to display.
/// The Lottie animation and the message can be customized.
class EmptyLottie extends StatelessWidget {
  // Constructor for `EmptyLottie`.
  const EmptyLottie({Key? key, this.message, this.height = 300, this.icon})
      : super(key: key);

  // The message to display below the Lottie animation.
  final String? message;

  // The height of the Lottie animation.
  final double height;

  // The asset name of the Lottie animation to display.
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          // Display the Lottie animation.
          child: Lottie.asset(
            // Use the provided icon if it is not null, otherwise use the default "empty search" icon.
            icon ?? AssetsManager.emptySearch,
            height: height,
          ),
        ),
        // Display the message.
        Text(message ?? 'No data found',
            textAlign: TextAlign.center,
            style: getBoldStyle(fontSize: 20.sp, color: ColorsManager.primary)),
      ],
    );
  }
}