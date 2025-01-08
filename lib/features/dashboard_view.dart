import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tezda_app/common/app_colors.dart';
import 'package:tezda_app/common/app_images.dart';
import 'package:tezda_app/common/app_strings.dart';
import 'package:tezda_app/features/products/presentation/views/product_list_view.dart';
import 'package:tezda_app/features/profile_view.dart';

import 'widgets/reusable_scaffold.dart';

@RoutePage()
class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  final List<Widget> _bodies = [
    const ProductsView(),
    ReusableScaffold(
        appBarTitle: AppString.wishlist, bodyText: AppString.comingSoon),
    ReusableScaffold(
        appBarTitle: AppString.notifications, bodyText: AppString.comingSoon),
    const ProfileView()
  ];

  final List<String> _icons = [
    AppImage.home,
    AppImage.wish,
    AppImage.bell,
    AppImage.profile
  ];

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodies[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (value) => setState(() => _page = value),
        items: List.generate(
          _icons.length,
          (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _icons[index],
                colorFilter: ColorFilter.mode(
                    _page == index ? AppColors.purple : AppColors.darkGray,
                    BlendMode.srcIn),
              ),
              label: ''),
        ),
      ),
    );
  }
}
