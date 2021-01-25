import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/timer_state_helper.dart';

class HomeViewModel extends BaseViewModel {
  TimerState _currentState = TimerState.TIMER_READY;
  TimerState get currentState => _currentState;

  Color get currentBackgroundColor =>
      TimerStateHelper.getBackgroundColor(_currentState);
}
