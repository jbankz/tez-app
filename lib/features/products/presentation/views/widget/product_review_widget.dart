import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tezda_app/app/utils/extension.dart';

import '../../../../../common/app_colors.dart';
import '../../../../widgets/start_rating_widget.dart';
import '../../../data/model/product.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({super.key, required Product product})
      : _product = product;

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          final review = _product.reviews[index];
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.purple.withValues(alpha: .50)),
                      child: Text(review.reviewerName?[0] ?? ''),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                        child: Text(review.reviewerName ?? '',
                            style: context.headlineLarge
                                ?.copyWith(fontSize: 12.sp),
                            textAlign: TextAlign.left,
                            maxLines: 1)),
                    SizedBox(width: 23.w),
                    StarRating(rating: review.rating.toDouble())
                  ],
                ),
                SizedBox(height: 4.h),
                Text(review.comment ?? '',
                    style: context.headlineLarge?.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGray.withValues(alpha: .50)))
              ]);
        },
        separatorBuilder: (_, __) => Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h), child: Divider()),
        itemCount: _product.reviews.length);
  }
}
