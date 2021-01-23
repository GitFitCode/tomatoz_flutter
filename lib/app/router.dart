import 'package:auto_route/auto_route_annotations.dart';
import 'package:tomatoz_flutter/ui/views/home/home_view.dart';
import 'package:tomatoz_flutter/ui/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
  ],
)
class $TomatoRouter {}
