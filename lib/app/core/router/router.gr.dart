// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:tezda_app/features/authentication/presentation/view/signin_view.dart'
    as _i4;
import 'package:tezda_app/features/authentication/presentation/view/signup_view.dart'
    as _i5;
import 'package:tezda_app/features/dashboard_view.dart' as _i1;
import 'package:tezda_app/features/products/data/model/product.dart' as _i8;
import 'package:tezda_app/features/products/presentation/views/product_details_view.dart'
    as _i2;
import 'package:tezda_app/features/products/presentation/views/product_list_view.dart'
    as _i3;

/// generated route for
/// [_i1.DashboardView]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardView();
    },
  );
}

/// generated route for
/// [_i2.ProductDetailsView]
class ProductDetailsRoute extends _i6.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i7.Key? key,
    required _i8.Product product,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i2.ProductDetailsView(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.product,
  });

  final _i7.Key? key;

  final _i8.Product product;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i3.ProductsView]
class ProductsRoute extends _i6.PageRouteInfo<void> {
  const ProductsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProductsView();
    },
  );
}

/// generated route for
/// [_i4.SigninView]
class SigninRoute extends _i6.PageRouteInfo<void> {
  const SigninRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SigninView();
    },
  );
}

/// generated route for
/// [_i5.SignupView]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SignupView();
    },
  );
}
