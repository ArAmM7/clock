import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

import '../../models/lap/lap.dart';
import '../../utils/storage_util.dart';

part 'stopwatch.g.dart';

class StopwatchStore = _StopwatchStore with _$StopwatchStore;

abstract class _StopwatchStore with Store {
  _StopwatchStore() {
    _timer = Timer(
      Duration.zero,
      () {},
    );
    _init();
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
        (a, b) => a.duration.compareTo(
          b.duration,
        ),
      );

    return ObservableSet.of({
      sortedLaps[1].id,
      sortedLaps.last.id,
    });
  }

  Future<void> _init() async {
    final x = await StorageUtils.getInitialTime();
    if (x != null) {
      _initialTime = x;
    }
    isRunning = await StorageUtils.getIsRunning();
    stop();
    if (isRunning) {
      start();
    }
  }

  @action
  void startOrStop() {
    if (!isRunning && !_timer.isActive) {
      start();
    } else {
      stop();
    }
    StorageUtils.setIsRunning(isRunning);
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
    isRunning = true;
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
    StorageUtils.setInitialTime(_initialTime);
  }

  @action
  void stop() {
    isRunning = false;
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
