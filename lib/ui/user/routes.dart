import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:devfest_2021/ui/user/user_page.dart';

const userTab = AutoRoute(
  path: "user",
  name: "UserTab",
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: "",
      page: UserPage,
    ),
  ],
);
