import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:devfest_2021/ui/search/search_page.dart';

const searchTab = AutoRoute(
  path: "search",
  name: "SearchTab",
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: "",
      page: SearchPage,
    ),
  ],
);
