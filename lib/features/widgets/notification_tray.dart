import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:tezda_app/app/utils/extension.dart';
import 'package:tezda_app/common/app_colors.dart';

void triggerNotificationTray(String message,
    {bool error = false, Duration? duration, bool ignoreIfNull = false}) {
  if (ignoreIfNull) return;
  showOverlayNotification(
      (_) => NotificationTray(message: message, isError: error),
      duration: duration ?? const Duration(milliseconds: 4000));
}

class NotificationTray extends StatelessWidget {
  const NotificationTray(
      {super.key, required this.message, this.isError = false});

  final String message;
  final bool isError;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: isError ? Colors.red : Colors.green),
          child: Text(message,
              style: context.bodyMedium?.copyWith(color: AppColors.white)),
        ),
      );
}
