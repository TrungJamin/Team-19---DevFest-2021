// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:devfest_2021/initial_page.dart' as _i1;
import 'package:devfest_2021/ui/auth/login/login_page.dart' as _i2;
import 'package:devfest_2021/ui/auth/sign_up/sign_up_page.dart' as _i3;
import 'package:devfest_2021/ui/home/home_page.dart' as _i5;
import 'package:devfest_2021/ui/search/search_page.dart' as _i6;
import 'package:devfest_2021/ui/user/user_page.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

class RootRouter extends _i4.RootStackRouter {
  RootRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return _i4.AdaptivePage<String>(
          routeData: routeData, child: const _i1.InitialPage());
    },
    LoginRoute.name: (routeData) {
      return _i4.AdaptivePage<String>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i4.AdaptivePage<String>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    HomeTab.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    SearchTab.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    UserTab.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.SearchPage());
    },
    UserRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.UserPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(InitialRoute.name, path: '/', children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: InitialRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i4.RouteConfig(HomeTab.name,
              path: 'home',
              parent: InitialRoute.name,
              children: [
                _i4.RouteConfig(HomeRoute.name, path: '', parent: HomeTab.name)
              ]),
          _i4.RouteConfig(SearchTab.name,
              path: 'search',
              parent: InitialRoute.name,
              children: [
                _i4.RouteConfig(SearchRoute.name,
                    path: '', parent: SearchTab.name)
              ]),
          _i4.RouteConfig(UserTab.name,
              path: 'user',
              parent: InitialRoute.name,
              children: [
                _i4.RouteConfig(UserRoute.name, path: '', parent: UserTab.name)
              ])
        ]),
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(SignUpRoute.name, path: '/signUp')
      ];
}

/// generated route for [_i1.InitialPage]
class InitialRoute extends _i4.PageRouteInfo<void> {
  const InitialRoute({List<_i4.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'InitialRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.EmptyRouterPage]
class HomeTab extends _i4.PageRouteInfo<void> {
  const HomeTab({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for [_i4.EmptyRouterPage]
class SearchTab extends _i4.PageRouteInfo<void> {
  const SearchTab({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'search', initialChildren: children);

  static const String name = 'SearchTab';
}

/// generated route for [_i4.EmptyRouterPage]
class UserTab extends _i4.PageRouteInfo<void> {
  const UserTab({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'user', initialChildren: children);

  static const String name = 'UserTab';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.SearchPage]
class SearchRoute extends _i4.PageRouteInfo<void> {
  const SearchRoute() : super(name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for [_i7.UserPage]
class UserRoute extends _i4.PageRouteInfo<void> {
  const UserRoute() : super(name, path: '');

  static const String name = 'UserRoute';
}
