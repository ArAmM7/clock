import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

import '../../models/lap.dart';

part 'stopwatch.g.dart';

class StopwatchStore = _StopwatchStore with _$StopwatchStore;

abstract class _StopwatchStore with Store {
  _StopwatchStore() {
    _timer = Timer(
      Duration.zero,
      () {},
    );
  }

  late Timer _timer;
  DateTime _initialTime = DateTime.now();
  Duration _previouslyElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;

  @observable
  Duration elapsed = Duration.zero;

  @observable
  ObservableList<Lap> laps = ObservableList.of(<Lap>[]);

  @observable
  Duration elapsedLaps = Duration.zero;

  @observable
  bool isRunning = false;

  @computed
  ObservableSet<String> get fastestAndSlowestLapIds {
    if (laps.length < 3) {
      return ObservableSet.of({'1', '2'});
    }
    final sortedLaps = laps.toList(growable: false)
      ..sort(
        (a, b) => a.duration.compareTo(b.duration),
      );

    return ObservableSet.of({sortedLaps[1].id, sortedLaps.last.id});
  }

  @action
  void startOrStop() {
    if (!isRunning && !_timer.isActive) {
      start();
      isRunning = true;
    } else {
      stop();
      isRunning = false;
    }
  }

  @action
  void lapOrReset() {
    if (_timer.isActive && isRunning) {
      lap();
    } else {
      reset();
    }
  }

  @action
  void start() {
    _initialTime = DateTime.now();
    _timer = Timer.periodic(
      const Duration(milliseconds: 8),
      (timer) {
        _currentlyElapsed = DateTime.now().difference(_initialTime);
        elapsed = _currentlyElapsed + _previouslyElapsed;
      },
    );
    if (laps.isEmpty) {
      lap();
    }
  }

  @action
  void stop() {
    _timer.cancel();
    _previouslyElapsed += _currentlyElapsed;
    _currentlyElapsed = Duration.zero;
  }

  @action
  Future<void> lap() async {
    laps.insert(
      laps.isEmpty ? 0 : laps.length - 1,
      Lap(
        id: DateTime.now().toIso8601String() + Random().nextInt(420).toString(),
        duration: elapsed - elapsedLaps,
      ),
    );
    elapsedLaps = elapsed;
  }

  @action
  Future<void> reset() async {
    _timer.cancel();
    _previouslyElapsed = Duration.zero;
    _currentlyElapsed = Duration.zero;
    laps.clear();
    elapsedLaps = Duration.zero;
    elapsed = Duration.zero;
  }
}
