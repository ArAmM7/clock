// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StopwatchStore on _StopwatchStore, Store {
  Computed<ObservableSet<String>>? _$fastestAndSlowestLapIdsComputed;

  @override
  ObservableSet<String> get fastestAndSlowestLapIds =>
      (_$fastestAndSlowestLapIdsComputed ??= Computed<ObservableSet<String>>(
              () => super.fastestAndSlowestLapIds,
              name: '_StopwatchStore.fastestAndSlowestLapIds'))
          .value;

  late final _$_initialTimeAtom =
      Atom(name: '_StopwatchStore._initialTime', context: context);

  DateTime get initialTime {
    _$_initialTimeAtom.reportRead();
    return super._initialTime;
  }

  @override
  DateTime get _initialTime => initialTime;

  @override
  set _initialTime(DateTime value) {
    _$_initialTimeAtom.reportWrite(value, super._initialTime, () {
      super._initialTime = value;
    });
  }

  late final _$_elapsedAtom =
      Atom(name: '_StopwatchStore._elapsed', context: context);

  Duration get elapsed {
    _$_elapsedAtom.reportRead();
    return super._elapsed;
  }

  @override
  Duration get _elapsed => elapsed;

  @override
  set _elapsed(Duration value) {
    _$_elapsedAtom.reportWrite(value, super._elapsed, () {
      super._elapsed = value;
    });
  }

  late final _$_lapsAtom =
      Atom(name: '_StopwatchStore._laps', context: context);

  ObservableList<Lap> get laps {
    _$_lapsAtom.reportRead();
    return super._laps;
  }

  @override
  ObservableList<Lap> get _laps => laps;

  @override
  set _laps(ObservableList<Lap> value) {
    _$_lapsAtom.reportWrite(value, super._laps, () {
      super._laps = value;
    });
  }

  late final _$_elapsedLapsAtom =
      Atom(name: '_StopwatchStore._elapsedLaps', context: context);

  Duration get elapsedLaps {
    _$_elapsedLapsAtom.reportRead();
    return super._elapsedLaps;
  }

  @override
  Duration get _elapsedLaps => elapsedLaps;

  @override
  set _elapsedLaps(Duration value) {
    _$_elapsedLapsAtom.reportWrite(value, super._elapsedLaps, () {
      super._elapsedLaps = value;
    });
  }

  late final _$_isRunningAtom =
      Atom(name: '_StopwatchStore._isRunning', context: context);

  bool get isRunning {
    _$_isRunningAtom.reportRead();
    return super._isRunning;
  }

  @override
  bool get _isRunning => isRunning;

  @override
  set _isRunning(bool value) {
    _$_isRunningAtom.reportWrite(value, super._isRunning, () {
      super._isRunning = value;
    });
  }

  late final _$_initAsyncAction =
      AsyncAction('_StopwatchStore._init', context: context);

  @override
  Future<void> _init() {
    return _$_initAsyncAction.run(() => super._init());
  }

  late final _$_lapAsyncAction =
      AsyncAction('_StopwatchStore._lap', context: context);

  @override
  Future<void> _lap() {
    return _$_lapAsyncAction.run(() => super._lap());
  }

  late final _$_resetAsyncAction =
      AsyncAction('_StopwatchStore._reset', context: context);

  @override
  Future<void> _reset() {
    return _$_resetAsyncAction.run(() => super._reset());
  }

  late final _$_StopwatchStoreActionController =
      ActionController(name: '_StopwatchStore', context: context);

  @override
  void _start() {
    final _$actionInfo = _$_StopwatchStoreActionController.startAction(
        name: '_StopwatchStore._start');
    try {
      return super._start();
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _stop() {
    final _$actionInfo = _$_StopwatchStoreActionController.startAction(
        name: '_StopwatchStore._stop');
    try {
      return super._stop();
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _resume() {
    final _$actionInfo = _$_StopwatchStoreActionController.startAction(
        name: '_StopwatchStore._resume');
    try {
      return super._resume();
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _timerCallback(dynamic _) {
    final _$actionInfo = _$_StopwatchStoreActionController.startAction(
        name: '_StopwatchStore._timerCallback');
    try {
      return super._timerCallback(_);
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fastestAndSlowestLapIds: ${fastestAndSlowestLapIds}
    ''';
  }
}
