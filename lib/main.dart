import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tomatoz_flutter/app/locator.dart';
import 'package:tomatoz_flutter/app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<TomatoRouter>(
        router: TomatoRouter(),
        initialRoute: Routes.splashView,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
