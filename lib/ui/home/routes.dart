import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'home_page.dart';

const homeTab = AutoRoute(
  path: 'home',
  page: EmptyRouterPage,
  name: "HomeTab",
  initial: true,
  children: [
    AutoRoute(
      path: '',
      page: HomePage,
    ),
  ],
);
