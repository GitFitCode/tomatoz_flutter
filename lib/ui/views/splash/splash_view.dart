import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/ui/views/splash/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  final String logoSVG = 'assets/icons/logo_cleaned.svg';
  final Color _bgColor = Color.fromRGBO(10, 14, 26, 1);

  @override
  Widget build(BuildContext context) {
    final Widget logo = SvgPicture.asset(
      logoSVG,
      semanticsLabel: 'Tomatoz Logo',
    );

    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.all(25.0),
            color: _bgColor,
            // color: Color.fromRGBO(16, 20, 38, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 50),
                    child: logo,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tomatoz',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    'a pomodoro app',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onModelReady: (model) => {model.navigateToHome()},
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
