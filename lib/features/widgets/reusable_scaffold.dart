import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tezda_app/app/utils/extension.dart';

class ReusableScaffold extends StatelessWidget {
  final String appBarTitle;
  final String bodyText;

  const ReusableScaffold(
      {super.key, required this.appBarTitle, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: Text(bodyText,
            style: context.headlineLarge?.copyWith(fontSize: 20.sp)),
      ),
    );
  }
}
