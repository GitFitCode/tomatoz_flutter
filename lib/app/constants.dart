import 'package:flutter/material.dart';
import 'package:tomatoz_flutter/app/timer_states.dart';

const Map<TimerState, Color> BG_COLORS = {
  TimerState.TIMER_READY: Color.fromRGBO(67, 255, 226, 1.0),
  TimerState.TIMER_RUNNING: Color.fromRGBO(255, 72, 102, 1.0),
  TimerState.TIMER_FINISHED: Color.fromRGBO(51, 102, 255, 1.0),
  TimerState.TIMER_PAUSED: Color.fromRGBO(67, 255, 226, 1.0),
};

const Map<TimerState, String> TIMER_CONTROL_BUTTON_TEXT = {
  TimerState.TIMER_READY: 'START',
  TimerState.TIMER_RUNNING: 'PAUSE',
  TimerState.TIMER_FINISHED: 'FINISHED',
  TimerState.TIMER_PAUSED: 'RESUME',
};

const Color HOME_CONTENT_BG_COLOR = Color.fromRGBO(16, 20, 38, 1);

const Duration INTERVAL = Duration(seconds: 1);
