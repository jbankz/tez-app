import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tezda_app/app/utils/extension.dart';
import 'package:tezda_app/common/app_colors.dart';
import 'package:tezda_app/common/app_strings.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import 'widget/product_review_widget.dart';

@RoutePage()
class ProductDetailsView extends ConsumerStatefulWidget {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailsViewState();
}

class _ProductDetailsViewState extends ConsumerState<ProductDetailsView> {
  late Product _product;

  @override
  void initState() {
    _product = widget.product;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Hero(
                      tag: 'product-${_product.id}',
                      child: Container(
                          width: double.infinity.w,
                          height: 248.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors.lightGray),
                          child: CachedNetworkImage(
                              imageUrl: _product.thumbnail ?? '')),
                    ),
                    SizedBox(height: 24.h),
                    Text(_product.title ?? '',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700)),
                    SizedBox(height: 8.h),
                    Text('\$${_product.price}',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.purple,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 16.h),
                    Text(_product.description ?? '',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGray.withValues(alpha: .50))),
                    SizedBox(height: 16.h),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: _product.images
                                .map((image) => Container(
                                    width: 50.w,
                                    height: 50.h,
                                    margin: EdgeInsets.only(right: 16.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: AppColors.lightGray),
                                    child: CachedNetworkImage(imageUrl: image)))
                                .toList())),
                    SizedBox(height: 24.h),
                    Text(AppString.shippingInfo,
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 8.h),
                    Text(_product.shippingInformation ?? '',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGray.withValues(alpha: .50)),
                        textAlign: TextAlign.left),
                    SizedBox(height: 24.h),
                    Text(AppString.warrantyInformation,
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 8.h),
                    Text(_product.warrantyInformation ?? '',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGray.withValues(alpha: .50)),
                        textAlign: TextAlign.left),
                    SizedBox(height: 24.h),
                    Text(AppString.returnPolicy,
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 8.h),
                    Text(_product.returnPolicy ?? '',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGray.withValues(alpha: .50)),
                        textAlign: TextAlign.left),
                    SizedBox(height: 24.h),
                    Text(AppString.review,
                        style: context.headlineLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 12.h),
                    Text('${_product.rating} Ratings',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 24.sp, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 12.h),
                    Text('${_product.reviews.length} Reviews',
                        style: context.headlineLarge?.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.darkGray.withValues(alpha: .50),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left),
                    SizedBox(height: 16.h),
                    ProductReviewWidget(product: _product)
                  ],
                ),
              ),
              SizedBox(height: 16.h),
            ],
          )),
    );
  }
}
