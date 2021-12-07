import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router/router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runZonedGuarded(() {
    runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );
  }, (error, stackTrace) {});
}

class MyApp extends StatelessWidget {
  final _rootRouter = RootRouter(
      // authGuard: AuthGuard(),

      );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
              bodyColor: Colors.white,
            ),
      ),
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
      builder: (_, router) {
        return router!;
      },
    );
  }
}
