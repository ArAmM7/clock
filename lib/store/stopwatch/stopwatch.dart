import 'dart:async';
import 'dart:developer';

import 'package:mobx/mobx.dart';

import 'package:uuid/uuid.dart';

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
  final _uuid = const Uuid();
  @readonly
  DateTime _initialTime = DateTime.now();
  Duration _previouslyElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;
  List<ReactionDisposer>? _disposers;

  @readonly
  Duration _elapsed = Duration.zero;

  @readonly
  // ignore: prefer_final_fields
  ObservableList<Lap> _laps = <Lap>[].asObservable();

  @readonly
  Duration _elapsedLaps = Duration.zero;

  @readonly
  bool _isRunning = false;

  @computed
  ObservableSet<String> get fastestAndSlowestLapIds {
    if (_laps.length < 3) {
      return ObservableSet.of({'1', '2'});
    }
    final sortedLaps = _laps.toList(growable: false)
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

  @action
  Future<void> _init() async {
    final x = await StorageUtils.getInitialTime();
    if (x != null) {
      _initialTime = x;
    }
    _isRunning = await StorageUtils.getIsRunning();
    _laps = (await StorageUtils.getLaps()).asObservable();
    if (_isRunning) {
      _resume();
    }
    _setupReactions();
  }

  void startOrStop() {
    if (!_isRunning && !_timer.isActive) {
      _start();
    } else {
      _stop();
    }
  }

  void lapOrReset() {
    if (_timer.isActive && _isRunning) {
      _lap();
    } else {
      _reset();
    }
  }

  @action
  void _start() {
    _isRunning = true;
    _initialTime = DateTime.now();
    _startTimer();
    if (_laps.isEmpty) {
      _lap();
    }
  }

  @action
  void _stop() {
    _isRunning = false;
    _timer.cancel();
    _previouslyElapsed += _currentlyElapsed;
    _currentlyElapsed = Duration.zero;
  }

  @action
  void _resume() {
    _startTimer();
    if (_laps.isEmpty) {
      _lap();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(milliseconds: 16),
      _timerCallback,
    );
  }

  @action
  void _timerCallback(_) {
    _currentlyElapsed = DateTime.now().difference(_initialTime);
    _elapsed = _currentlyElapsed + _previouslyElapsed;
  }

  @action
  Future<void> _lap() async {
    _laps.insert(
      _laps.isEmpty ? 0 : _laps.length - 1,
      Lap(
        id: _uuid.v4(),
        duration: _elapsed - _elapsedLaps,
      ),
    );
    _elapsedLaps = _elapsed;
  }

  @action
  Future<void> _reset() async {
    _timer.cancel();
    _previouslyElapsed = Duration.zero;
    _currentlyElapsed = Duration.zero;
    _laps.clear();
    _elapsedLaps = Duration.zero;
    _elapsed = Duration.zero;
  }

  void _setupReactions() {
    _disposers = [
      reaction(
        (_) => _isRunning,
        StorageUtils.setIsRunning,
      ),
      reaction(
        (_) => _initialTime,
        StorageUtils.setInitialTime,
      ),
      reaction(
        (_) => _laps.iterator,
        (newVal) {
          StorageUtils.setLaps(_laps);
          log(_laps.toString(), name: '_laps reaction');
        },
      ),
    ];
  }

  void dispose() {
    if (_disposers == null) {
      return;
    }
    for (final d in _disposers!) {
      d();
    }
  }
}
