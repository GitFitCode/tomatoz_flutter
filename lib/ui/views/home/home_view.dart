import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/ui/views/home/timer_control_buttons.dart';
import 'package:tomatoz_flutter/ui/views/timer/timer_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.all(30.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          FlatButton(
                            onPressed: () => model.resetTimer(),
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Icon(
                                FontAwesomeIcons.stopwatch,
                                color: Colors.white,
                                size: 200.0,
                              ),
                            ),
                          ),
                          Flexible(
                            child: TimerControlButton(model),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // TODO replace all these texts by selectable buttons
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  '25',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
