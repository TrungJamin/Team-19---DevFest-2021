import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:devfest_2021/router/router.gr.dart';
import 'package:devfest_2021/ui/hook/use_router.dart';
import 'package:devfest_2021/ultilize/screen_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InitialPage extends StatefulHookWidget {
  const InitialPage({
    Key? key,
  }) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(context) {
    ScreenSize.init(context);
    final router = useRouter();

    return AutoTabsScaffold(
      homeIndex: 0,
      // appBarBuilder: (context, tabsRouter) {
      //   return AppBar();
      // },
      routes: const [
        HomeTab(),
        SearchTab(),
        UserTab(),
      ],
      bottomNavigationBuilder: buildBottomNav,
    );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;

    return hideBottomNav
        ? const SizedBox.shrink()
        : ConvexAppBar(
            backgroundColor: Colors.black,
            initialActiveIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            // style: TabStyle.fixed,
            top: -20,
            height: 50,
            color: Colors.white,
            items: const [
              TabItem(
                icon: Icons.home,
                title: "Home",
              ),
              TabItem(
                icon: Icons.search,
                title: "Search",
              ),
              TabItem(
                icon: Icons.person,
                title: "User",
              )
            ],
          );
  }
}
