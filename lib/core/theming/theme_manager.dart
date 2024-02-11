import 'package:aamar_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// `appTheme` is a getter that returns the [ThemeData] for the application.
///
/// It defines the colors, styles, and layouts for various UI elements.
ThemeData get appTheme => ThemeData(
      // The background color for major parts of the app (toolbars, tab bars, etc).
      scaffoldBackgroundColor: ColorsManager.backgroundColor,

      // If true, the application uses Material 3 for its components.
      useMaterial3: true,

      // The background color for major parts of the app.
      primaryColor: ColorsManager.primary,

      // Defines the default configuration for [AppBar] widgets.
      appBarTheme: const AppBarTheme(
        // The default color of [AppBar] elements.
        backgroundColor: ColorsManager.white,

        // The default color, opacity, and size for icons within an [AppBar].
        iconTheme: IconThemeData(color: ColorsManager.primary),
      ),

      // The theme for [TextSelection] widgets.
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: ColorsManager.primary),

      // The theme for [ElevatedButton] widgets.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            // The color for specific parts of a [Button] when it is enabled.
            foregroundColor:
                MaterialStateProperty.all<Color>(ColorsManager.white),

            // The color of the [Button]'s [Material] when it is enabled.
            backgroundColor:
                MaterialStateProperty.all<Color>(ColorsManager.primary)),
      ),

      // Defines the default appearance of [InputDecorator]s.
      inputDecorationTheme: InputDecorationTheme(
          // Whether the [InputDecorator] is part of a dense form (i.e., uses less vertical space).
          isDense: true,

          // The padding for the input field within the [InputDecorator].
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),

          // The border to display when the [InputDecorator] is enabled and not focused.
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),

          // The border to display when the [InputDecorator] is focused.
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.primary, width: 2.sp),
              borderRadius: BorderRadius.circular(16.r)),

          // The border to display when the [InputDecorator] is disabled.
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),

          // The border to display when the [InputDecorator] has an error.
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r)),

          // The border to display when the [InputDecorator] is focused and has an error.
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r))),
    );
