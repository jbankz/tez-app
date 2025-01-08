import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:tezda_app/app/core/constants/page_navigator.dart';
import 'package:tezda_app/app/core/manager/session_manager.dart';
import 'package:tezda_app/app/core/router/router.gr.dart';
import 'package:tezda_app/app/utils/extension.dart';
import 'package:tezda_app/features/products/presentation/notifier/products_notifier.dart';

import '../common/app_colors.dart';
import '../common/app_strings.dart';
import 'authentication/data/dao/user_dao.dart';
import 'authentication/data/model/user.dart';
import 'authentication/presentation/notifier/auth_notifier.dart';
import 'widgets/elevated_button_widget.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  late final AuthNotifier _authNotifier;

  @override
  void initState() {
    super.initState();
    _authNotifier = ref.read(authNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authNotifier.getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: authState.isGettingUser
            ? const Center(child: CircularProgressIndicator())
            : ValueListenableBuilder<Box>(
                valueListenable: userDao.getListenable(),
                builder: (_, box, __) {
                  final user = userDao.read(box);

                  return ListView(
                    children: [
                      SizedBox(height: 24.h),
                      _buildProfileImage(user.image),
                      SizedBox(height: 32.h),
                      _buildUserInfoSection(user),
                      if (authState.deviceInfo != null) ...[
                        SizedBox(height: 16.h),
                        _buildDeviceInfoSection(authState.deviceInfo),
                      ],
                      SizedBox(height: 16.h),
                      ElevatedButtonIconWidget(
                          onPressed: _logUserOut, title: AppString.logout),
                    ],
                  );
                },
              ),
      ),
    );
  }

  Widget _buildProfileImage(String? imageUrl) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      height: 80.h,
      width: 80.w,
      alignment: Alignment.center,
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Icon(Icons.person, size: 40),
      ),
    );
  }

  Widget _buildUserInfoSection(User user) {
    final userInfo = [
      {AppString.fullName: '${user.firstName} ${user.lastName}'},
      {AppString.username: '@${user.username}'},
      {AppString.email: user.email ?? ''},
      {AppString.gender: user.gender?.value ?? ''},
    ];

    return _buildInfoContainer(userInfo);
  }

  Widget _buildDeviceInfoSection(Map<String, dynamic>? deviceInfo) {
    final deviceInfoList = deviceInfo!.entries
        .map((entry) => {entry.key.titleCase: entry.value.toString()})
        .toList();

    return _buildInfoContainer(deviceInfoList);
  }

  Widget _buildInfoContainer(List<Map<String, String>> infoList) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.lightGray,
      ),
      child: Column(
        spacing: 16.h,
        children: infoList.map((info) {
          final key = info.keys.first;
          final value = info.values.first;
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key,
                  style: context.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(width: 23.w),
                Expanded(
                  child: Text(
                    value,
                    style: context.headlineLarge?.copyWith(fontSize: 14.sp),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  void _logUserOut() => session.logOut().then((state) {
        ref
          ..invalidate(authNotifierProvider)
          ..invalidate(productsNotifierProvider);
        PageNavigator.replace(SigninRoute());
      });
}
