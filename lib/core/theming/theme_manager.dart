import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: ColorsManager.backgroundColor,
      useMaterial3: true,
      primaryColor: ColorsManager.primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorsManager.white,
        iconTheme: IconThemeData(color: ColorsManager.primary),
      ),
      // App bar background color),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: ColorsManager.primary),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(ColorsManager.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(ColorsManager.primary)),
      ),

      //input decoration theme for textfields

      inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.primary, width: 2.sp),
              borderRadius: BorderRadius.circular(16.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r))),
    );
