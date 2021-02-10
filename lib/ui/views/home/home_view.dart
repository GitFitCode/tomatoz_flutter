import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/ui/views/home/duration_chooser_buttons.dart';
import 'package:tomatoz_flutter/ui/views/home/timer_control_buttons.dart';
import 'package:tomatoz_flutter/ui/views/timer/timer_viewmodel.dart';

class HomeView extends StatelessWidget {
  final String defaultTimerSVG = 'assets/icons/default_timer_cleaned.svg';

  @override
  Widget build(BuildContext context) {
    final Widget timerSVG = SvgPicture.asset(
      defaultTimerSVG,
      semanticsLabel: 'Tomatoz Logo',
    );

    return ViewModelBuilder<TimerViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                shadowColor: Colors.transparent,
                backgroundColor: BG_COLORS[model.currentTimerState],
                leading: IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: null,
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisH,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              body: Stack(
                children: [
                  Container(color: BG_COLORS[model.currentTimerState]),
                  Container(
                    decoration: BoxDecoration(
                      color: HOME_CONTENT_BG_COLOR,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  model.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: FlatButton(
                                  onPressed: () => model.resetTimer(),
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(
                                      letterSpacing: 1.0,
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RotationTransition(
                            turns: AlwaysStoppedAnimation(
                                model.timerRotation / 360),
                            child: timerSVG,
                          ),
                          Flexible(
                            child: TimerControlButton(model),
                          ),
                          DurationChooserButtons(model),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => TimerViewModel());
  }
}
