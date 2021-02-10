import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/app/timer_states.dart';
import 'package:tomatoz_flutter/ui/views/timer/timer_viewmodel.dart';

class DurationChooserButtons extends StatelessWidget {
  final TimerViewModel model;

  DurationChooserButtons(this.model);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TimerViewModel>.reactive(
        builder: (context, model, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // TODO replace all these texts by selectable buttons
              Container(
                height: 55.0,
                width: 55.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '10',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 55.0,
                width: 55.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor:
                        model.currentTimerState == TimerState.TIMER_RUNNING
                            ? Colors.grey
                            : BG_COLORS[model.currentTimerState],
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0.0,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '25',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 55.0,
                width: 55.0,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        viewModelBuilder: () => model);
  }
}
