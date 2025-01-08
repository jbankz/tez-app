import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tezda_app/app/core/constants/page_navigator.dart';
import 'package:tezda_app/app/core/router/router.gr.dart';
import 'package:tezda_app/app/utils/extension.dart';
import 'package:tezda_app/common/app_colors.dart';
import 'package:tezda_app/common/app_images.dart';
import 'package:tezda_app/common/app_strings.dart';
import 'package:tezda_app/features/products/presentation/notifier/products_notifier.dart';

import '../../data/model/product.dart';

@RoutePage()
class ProductsView extends ConsumerStatefulWidget {
  const ProductsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsViewState();
}

class _ProductsViewState extends ConsumerState<ProductsView> {
  final CancelToken _cancelToken = CancelToken();
  late ProductsNotifier _productsNotifier;
  final Map<int, bool> _isAnimating = {};

  @override
  void initState() {
    super.initState();
    _productsNotifier = ref.read(productsNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _productsNotifier.getProducts(_cancelToken);
    });
  }

  @override
  void dispose() {
    _cancelToken.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productsNotifierProvider);
    final products = productState.products;

    return Scaffold(
      appBar: AppBar(title: Text(AppString.products)),
      body: SafeArea(
        child: _buildProductGrid(productState.isGettingProducts, products),
      ),
    );
  }

  Widget _buildProductGrid(bool isLoading, List<Product> products) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.w,
        mainAxisSpacing: 20.h,
        mainAxisExtent: 220.h,
      ),
      itemCount: isLoading ? 25 : products.length,
      itemBuilder: (_, index) {
        if (isLoading) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.grey.withValues(alpha: 0.4),
            ),
          );
        }
        return _buildProductItem(products[index]);
      },
    );
  }

  Widget _buildProductItem(Product product) {
    return InkWell(
      onTap: () =>
          PageNavigator.pushRoute(ProductDetailsRoute(product: product)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.lightGray,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () => _toggleFavorite(product),
                  child: AnimatedScale(
                    scale: _isAnimating[product.id] == true ? 1.5 : 1.0,
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.bounceOut,
                    child: SvgPicture.asset(
                      product.isFavorited ? AppImage.fillHeart : AppImage.heart,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Hero(
                tag: 'product-${product.id}',
                child: CachedNetworkImage(
                  imageUrl: product.thumbnail ?? '',
                  placeholder: (_, __) =>
                      Center(child: CupertinoActivityIndicator()),
                  errorWidget: (_, __, ___) => Icon(Icons.image_not_supported),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.title ?? 'Unknown Product',
                    style: context.headlineLarge?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _toggleFavorite(Product product) async {
    setState(() => _isAnimating[product.id] = true);
    await _productsNotifier.toggleFavorites(product);
    setState(() => _isAnimating[product.id] = false);
  }
}
