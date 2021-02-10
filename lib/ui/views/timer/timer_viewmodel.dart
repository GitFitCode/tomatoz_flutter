import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:tomatoz_flutter/app/constants.dart';
import 'package:tomatoz_flutter/app/timer_states.dart';

class TimerViewModel extends BaseViewModel {
  TimerViewModel._privateConstructor();

  static final TimerViewModel _instance = TimerViewModel._privateConstructor();

  factory TimerViewModel() {
    _remainingTime = _defaultTomatoDuration;
    _timerState = TimerState.TIMER_READY;
    _timerRotation = 1;
    return _instance;
  }

  String get title => _remainingTime.format();

  TimerState get currentTimerState => _timerState;

  static int _timerRotation;
  int get timerRotation => _timerRotation;

  static Timer _timer;
  static Duration _remainingTime;

  static const Duration _defaultTomatoDuration = Duration(minutes: 25);

  // static const Duration _shortBreakDuration = Duration(minutes: 5);
  // static const Duration _longBreakDuration = Duration(minutes: 10);

  static TimerState _timerState;

  void startTimer() {
    if (_timerState != TimerState.TIMER_RUNNING) {
      if (_timerState != TimerState.TIMER_PAUSED) {
        _remainingTime = _defaultTomatoDuration;
        notifyListeners();
      }
      _timerState = TimerState.TIMER_RUNNING;
      notifyListeners();
      _startCountDown();
    } else {
      print('The timer is already running');
    }
  }

  void _startCountDown() {
    _timer = Timer.periodic(INTERVAL, (timer) {
      if (_remainingTime == Duration.zero) {
        _onTimerFinished();
      } else {
        _remainingTime -= INTERVAL;
        _timerRotation += 6;
        notifyListeners();
      }
    });
  }

  void _onTimerFinished() {
    _timer.cancel();
    _timerState = TimerState.TIMER_FINISHED;
    notifyListeners();
  }

  void pauseTimer() {
    if (_timerState != TimerState.TIMER_PAUSED) {
      _timerState = TimerState.TIMER_PAUSED;
      _timer?.cancel();
      notifyListeners();
    } else {
      print('The timer is already paused');
    }
  }

  void resetTimer() {
    if (_timerState != TimerState.TIMER_READY) {
      _timerState = TimerState.TIMER_READY;
      _timer?.cancel();
      _remainingTime = _defaultTomatoDuration;
      _timerRotation = 1;
      notifyListeners();
    } else {
      print('The timer is already reset');
    }
  }
}

extension on Duration {
  String format() {
    String hhmmss = '$this'.split('.')[0].padLeft(8, '0');
    String mm = hhmmss.split(':')[1];
    String ss = hhmmss.split(':')[2];

    return '$mm:$ss';
  }
}
