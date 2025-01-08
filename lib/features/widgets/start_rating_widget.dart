import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;
  final Color? borderColor;
  final double? size;
  final MainAxisAlignment mainAxisAlignment;
  final bool allowHalfRating;
  final IconData? filledIcon;
  final IconData? halfFilledIcon;
  final IconData? emptyIcon;

  const StarRating({
    this.starCount = 5,
    this.rating = .0,
    this.onRatingChanged,
    this.color = AppColors.purple,
    this.borderColor,
    this.size,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.allowHalfRating = false,
    super.key,
    this.filledIcon,
    this.halfFilledIcon,
    this.emptyIcon,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onPanUpdate: (details) {
          if (onRatingChanged != null) {
            // Calculate the new rating based on the horizontal drag position
            final RenderBox box = context.findRenderObject() as RenderBox;
            final localPosition = box.globalToLocal(details.globalPosition);
            final double starWidth = (size ?? 24) + 4.0; // Icon size + spacing
            double newRating = localPosition.dx / starWidth;

            if (newRating < 0) newRating = 0; // Prevent negative ratings
            if (newRating > starCount) {
              newRating = starCount.toDouble(); // Cap to max stars
            }
            if (!allowHalfRating) {
              newRating = newRating.roundToDouble(); // Disable half stars
            }

            onRatingChanged!(newRating);
          }
        },
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: List.generate(
                starCount,
                (index) => _buildStar(context, index),
              ),
            ),
          ),
        ),
      );

  Widget _buildStar(BuildContext context, int index) {
    IconData iconData;
    if (index >= rating) {
      iconData = emptyIcon ?? Icons.star_border;
    } else if (index > rating - 1 && index < rating) {
      iconData = halfFilledIcon ?? Icons.star_half;
    } else {
      iconData = filledIcon ?? Icons.star;
    }

    return Icon(
      iconData,
      color:
          index >= rating ? borderColor ?? Colors.grey : color ?? Colors.yellow,
      size: size,
    );
  }
}
