import 'package:flutter/material.dart';
import 'package:tomatoz_flutter/app/timer_state_helper.dart';

const Map<TimerState, Color> BG_COLORS = {
  TimerState.TIMER_READY: Color.fromRGBO(67, 255, 226, 1.0),
  TimerState.TIMER_RUNNING: Color.fromRGBO(255, 72, 102, 1.0),
  TimerState.TIMER_PAUSED: Color.fromRGBO(51, 102, 255, 1.0),
};

const Color HOME_CONTENT_BG_COLOR = Color.fromRGBO(16, 20, 38, 1);
