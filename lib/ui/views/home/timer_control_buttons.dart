import 'package:flutter/material.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/app/timer_states.dart';
import 'package:tomatoz_flutter/ui/views/timer/timer_viewmodel.dart';

class TimerControlButton extends StatelessWidget {
  final TimerViewModel model;

  TimerControlButton(this.model);

  Widget _startButton(TimerViewModel model) {
    return RaisedButton(
      padding: EdgeInsets.all(20.0),
      elevation: 0.0,
      onPressed: () => model.startTimer(),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(
          color: BG_COLORS[model.currentTimerState],
          width: 5.0,
        ),
      ),
      child: Text(
        TIMER_CONTROL_BUTTON_TEXT[model.currentTimerState],
        style: TextStyle(
          letterSpacing: 1.0,
          color: BG_COLORS[model.currentTimerState],
          fontSize: 33.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _pauseButton(TimerViewModel model) {
    return RaisedButton(
      padding: EdgeInsets.all(20.0),
      elevation: 0.0,
      onPressed: () => model.pauseTimer(),
      color: BG_COLORS[model.currentTimerState],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(
          color: BG_COLORS[model.currentTimerState],
          width: 5.0,
        ),
      ),
      child: Text(
        TIMER_CONTROL_BUTTON_TEXT[model.currentTimerState],
        style: TextStyle(
          letterSpacing: 1.0,
          color: Colors.white,
          fontSize: 33.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _resumeButton(TimerViewModel model) {
    return RaisedButton(
      padding: EdgeInsets.all(20.0),
      elevation: 0.0,
      onPressed: () => model.startTimer(),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(
          color: BG_COLORS[model.currentTimerState],
          width: 5.0,
        ),
      ),
      child: Text(
        TIMER_CONTROL_BUTTON_TEXT[model.currentTimerState],
        style: TextStyle(
          letterSpacing: 1.0,
          color: BG_COLORS[model.currentTimerState],
          fontSize: 33.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _finishedButton(TimerViewModel model) {
    return RaisedButton(
      padding: EdgeInsets.all(20.0),
      elevation: 0.0,
      onPressed: () => null,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
        side: BorderSide(
          color: BG_COLORS[model.currentTimerState],
          width: 5.0,
        ),
      ),
      child: Text(
        TIMER_CONTROL_BUTTON_TEXT[model.currentTimerState],
        style: TextStyle(
          letterSpacing: 1.0,
          color: BG_COLORS[model.currentTimerState],
          fontSize: 33.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (model.currentTimerState) {
      case TimerState.TIMER_READY:
        return _startButton(model);
        break;

      case TimerState.TIMER_PAUSED:
        return _resumeButton(model);
        break;

      case TimerState.TIMER_RUNNING:
        return _pauseButton(model);
        break;

      case TimerState.TIMER_FINISHED:
        return _finishedButton(model);
        break;

      default:
        return _startButton(model);
    }
  }
}
