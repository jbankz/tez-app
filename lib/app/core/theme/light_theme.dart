import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/app_colors.dart';
import 'styles.dart';

ThemeData lightTheme = ThemeData.light(useMaterial3: false).copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: AppColors.white,
  iconTheme: const IconThemeData(size: 24),
  canvasColor: AppColors.white,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  brightness: Brightness.light,
  cardTheme: const CardTheme(color: AppColors.white),
  dividerTheme: DividerThemeData(thickness: 1, color: Colors.grey[300]),
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: AppColors.purple),
  appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: headlineLarge.copyWith(fontSize: 18),
      iconTheme: const IconThemeData(color: AppColors.purple)),
  primaryTextTheme: const TextTheme(),
  textTheme: TextTheme(headlineLarge: headlineLarge),
  cardColor: AppColors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          elevation: WidgetStateProperty.resolveWith((states) => 0),
          enableFeedback: true,
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.lightGray;
            }
            return AppColors.purple;
          }),
          textStyle: WidgetStateProperty.resolveWith((states) =>
              GoogleFonts.instrumentSans(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
          shape: WidgetStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          foregroundColor: WidgetStateColor.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.darkGray;
            }

            return AppColors.white;
          }),
          side: WidgetStateBorderSide.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return const BorderSide(color: AppColors.lightGray);
            }
            return const BorderSide(color: AppColors.purple);
          }))),
  outlinedButtonTheme: const OutlinedButtonThemeData(),
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: headlineLarge.copyWith(
          overflow: TextOverflow.ellipsis,
          fontSize: 16,
          color: AppColors.darkGray.withValues(alpha: .50),
          fontWeight: FontWeight.w400),
      hintStyle: headlineLarge.copyWith(
          fontSize: 16,
          color: AppColors.darkGray.withValues(alpha: .50),
          fontWeight: FontWeight.w400),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: AppColors.lightGray,
      filled: true,
      errorMaxLines: 5,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      errorStyle: headlineLarge.copyWith(
          color: Colors.red, fontSize: 12, overflow: TextOverflow.visible),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.lightGray)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.purple)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.lightGray)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red)),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.lightGray))),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.purple,
      unselectedItemColor: AppColors.darkGray,
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      elevation: 5),
);
