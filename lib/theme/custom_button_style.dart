import 'dart:ui';
import 'package:hritesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientPrimaryToOnPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        gradient: LinearGradient(
          begin: Alignment(-0.01, 0),
          end: Alignment(1.01, 0),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnPrimaryTL8Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(-0.01, 0),
          end: Alignment(1.01, 0),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
