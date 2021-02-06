import 'package:flutter/material.dart';
import 'package:tomatoz_flutter/app/constants.dart';

enum TimerState { TIMER_READY, TIMER_PAUSED, TIMER_RUNNING, TIMER_FINISHED }

abstract class TimerStateHelper {
  static String getTriggerButtonText(TimerState timerState) {
    assert(timerState != null);

    switch (timerState) {
      case TimerState.TIMER_READY:
        return 'START';
        break;
      case TimerState.TIMER_RUNNING:
        return 'PAUSE';
        break;
      case TimerState.TIMER_PAUSED:
        return 'RESUME';
        break;
      case TimerState.TIMER_FINISHED:
        return 'FINISHED';
        break;
    }
  }

  static Color getBackgroundColor(TimerState timerState) {
    assert(timerState != null);

    switch (timerState) {
      case TimerState.TIMER_READY:
        return BG_COLORS[TimerState.TIMER_READY];
        break;
      case TimerState.TIMER_RUNNING:
        return BG_COLORS[TimerState.TIMER_RUNNING];
        break;
      case TimerState.TIMER_PAUSED:
        return BG_COLORS[TimerState.TIMER_PAUSED];
        break;
      case TimerState.TIMER_FINISHED:
        return BG_COLORS[TimerState.TIMER_READY];
        break;
    }
  }
}
