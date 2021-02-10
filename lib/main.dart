import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tomatoz_flutter/app/locator.dart';
import 'package:tomatoz_flutter/app/router.gr.dart';
import 'package:tomatoz_flutter/app/utils.dart';

void main() {
  Logger.level = Level.verbose;
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final log = getLogger('MyApp');

  @override
  Widget build(BuildContext context) {
    log.d('App Launched');

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'FilsonPro',
      ),
      builder: ExtendedNavigator.builder<TomatoRouter>(
        router: TomatoRouter(),
        initialRoute: Routes.splashView,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
