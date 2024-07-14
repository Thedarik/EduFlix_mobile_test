import 'package:eduflix_mobile_test/src/core/routes/go_route_system.dart';
import 'package:flutter/material.dart';

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Audio Book',
          routerConfig: GoRouterApp.router,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.noScaling),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: child ?? const Scaffold(),
            ),
          ),
        ),
      );
}
