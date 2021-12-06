import 'package:auto_route/auto_route.dart';
import 'package:devfest_2021/ui/auth/login/login_page.dart';
import 'package:devfest_2021/ui/auth/sign_up/sign_up_page.dart';
import 'package:devfest_2021/ui/home/routes.dart';
import 'package:devfest_2021/ui/search/routes.dart';
import 'package:devfest_2021/ui/user/routes.dart';

import '../initial_page.dart';

@AdaptiveAutoRouter(
  // transitionsBuilder: TransitionsBuilders.fadeIn,
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    // app stack
    AutoRoute<String>(
      path: '/',
      page: InitialPage,
      children: [
        homeTab,
        searchTab,
        userTab,
      ],
    ),
    AutoRoute<String>(
      page: LoginPage,
      path: "/login",
    ),
    AutoRoute<String>(
      page: SignUpPage,
      path: "/signUp",
    ),
  ],
)
class $RootRouter {}
