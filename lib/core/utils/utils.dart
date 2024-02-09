//show ios dialog
import 'package:aamar_task/core/res/custom_text_styles.dart';
import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showIosDialog(
    {required BuildContext context,
    String? title,
    String? content,
    String? okText,
    String? cancelText,
    Function? ok,
    Function? cancel}) async {
  return showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Padding(
            padding: EdgeInsets.only(bottom: 8.sp),
            child: Text(title ?? '', style: getBoldStyle(fontSize: 16.sp)),
          ),
          content: Text(content ?? '', style: getRegularStyle(fontSize: 12.sp)),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                cancelText ?? '',
                style: getRegularStyle(
                  fontSize: 16.sp,
                  color: ColorsManager.primary,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                cancel!();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                okText ?? '',
                style: getBoldStyle(fontSize: 16.sp, color: ColorsManager.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                ok!();
              },
            ),
          ],
        );
      });
}
