// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:devfest_2021/data/models/photo/photo.dart' as _i11;
import 'package:devfest_2021/initial_page.dart' as _i1;
import 'package:devfest_2021/ui/auth/login/login_page.dart' as _i2;
import 'package:devfest_2021/ui/auth/sign_up/sign_up_page.dart' as _i3;
import 'package:devfest_2021/ui/home/home_page.dart' as _i7;
import 'package:devfest_2021/ui/home/image_detail_page.dart' as _i4;
import 'package:devfest_2021/ui/home/queried_photos_page.dart' as _i5;
import 'package:devfest_2021/ui/search/search_page.dart' as _i8;
import 'package:devfest_2021/ui/user/user_page.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

class RootRouter extends _i6.RootStackRouter {
  RootRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return _i6.AdaptivePage<String>(
          routeData: routeData, child: const _i1.InitialPage());
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<String>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i6.AdaptivePage<String>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    ImageDetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ImageDetailRouteArgs>(
          orElse: () => ImageDetailRouteArgs(photo: queryParams.get('photo')));
      return _i6.AdaptivePage<String>(
          routeData: routeData,
          child: _i4.ImageDetailPage(key: args.key, photo: args.photo));
    },
    QueriedPhotosRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<QueriedPhotosRouteArgs>(
          orElse: () =>
              QueriedPhotosRouteArgs(query: queryParams.optString('query')));
      return _i6.AdaptivePage<String>(
          routeData: routeData,
          child: _i5.QueriedPhotosPage(key: args.key, query: args.query));
    },
    HomeTab.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    SearchTab.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    UserTab.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    },
    UserRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.UserPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(InitialRoute.name, path: '/', children: [
          _i6.RouteConfig('#redirect',
              path: '',
              parent: InitialRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i6.RouteConfig(HomeTab.name,
              path: 'home',
              parent: InitialRoute.name,
              children: [
                _i6.RouteConfig(HomeRoute.name, path: '', parent: HomeTab.name)
              ]),
          _i6.RouteConfig(SearchTab.name,
              path: 'search',
              parent: InitialRoute.name,
              children: [
                _i6.RouteConfig(SearchRoute.name,
                    path: '', parent: SearchTab.name)
              ]),
          _i6.RouteConfig(UserTab.name,
              path: 'user',
              parent: InitialRoute.name,
              children: [
                _i6.RouteConfig(UserRoute.name, path: '', parent: UserTab.name)
              ])
        ]),
        _i6.RouteConfig(LoginRoute.name, path: '/login'),
        _i6.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i6.RouteConfig(ImageDetailRoute.name, path: '/image_detail'),
        _i6.RouteConfig(QueriedPhotosRoute.name, path: '/queried_photos_page')
      ];
}

/// generated route for [_i1.InitialPage]
class InitialRoute extends _i6.PageRouteInfo<void> {
  const InitialRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'InitialRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.ImageDetailPage]
class ImageDetailRoute extends _i6.PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({_i10.Key? key, _i11.Photo? photo})
      : super(name,
            path: '/image_detail',
            args: ImageDetailRouteArgs(key: key, photo: photo),
            rawQueryParams: {'photo': photo});

  static const String name = 'ImageDetailRoute';
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({this.key, this.photo});

  final _i10.Key? key;

  final _i11.Photo? photo;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, photo: $photo}';
  }
}

/// generated route for [_i5.QueriedPhotosPage]
class QueriedPhotosRoute extends _i6.PageRouteInfo<QueriedPhotosRouteArgs> {
  QueriedPhotosRoute({_i10.Key? key, String? query})
      : super(name,
            path: '/queried_photos_page',
            args: QueriedPhotosRouteArgs(key: key, query: query),
            rawQueryParams: {'query': query});

  static const String name = 'QueriedPhotosRoute';
}

class QueriedPhotosRouteArgs {
  const QueriedPhotosRouteArgs({this.key, this.query});

  final _i10.Key? key;

  final String? query;

  @override
  String toString() {
    return 'QueriedPhotosRouteArgs{key: $key, query: $query}';
  }
}

/// generated route for [_i6.EmptyRouterPage]
class HomeTab extends _i6.PageRouteInfo<void> {
  const HomeTab({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for [_i6.EmptyRouterPage]
class SearchTab extends _i6.PageRouteInfo<void> {
  const SearchTab({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for [_i6.EmptyRouterPage]
class UserTab extends _i6.PageRouteInfo<void> {
  const UserTab({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'user', initialChildren: children);

  static const String name = 'UserTab';
}

/// generated route for [_i7.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i8.SearchPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute() : super(name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for [_i9.UserPage]
class UserRoute extends _i6.PageRouteInfo<void> {
  const UserRoute() : super(name, path: '');

  static const String name = 'UserRoute';
}
