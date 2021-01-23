import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tomatoz_flutter/app/locator.dart';
import 'package:tomatoz_flutter/app/router.gr.dart';

class SplashViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToHome() {
    Timer(Duration(seconds: 3), () {
      _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
    });
  }
}
