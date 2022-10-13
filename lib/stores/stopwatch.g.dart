// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StopwatchStore on _StopwatchStore, Store {
  Computed<ObservableSet<String>>? _$fastestAndSlowestLapIdsComputed;

  @override
  ObservableSet<String> get fastestAndSlowestLapIds => (_$fastestAndSlowestLapIdsComputed ??=
          Computed<ObservableSet<String>>(() => super.fastestAndSlowestLapIds,
              name: '_StopwatchStore.fastestAndSlowestLapIds'))
      .value;

  late final _$elapsedAtom = Atom(name: '_StopwatchStore.elapsed', context: context);

  @override
  Duration get elapsed {
    _$elapsedAtom.reportRead();
    return super.elapsed;
  }

  @override
  set elapsed(Duration value) {
    _$elapsedAtom.reportWrite(value, super.elapsed, () {
      super.elapsed = value;
    });
  }

  late final _$lapsAtom = Atom(name: '_StopwatchStore.laps', context: context);

  @override
  ObservableList<Lap> get laps {
    _$lapsAtom.reportRead();
    return super.laps;
  }

  @override
  set laps(ObservableList<Lap> value) {
    _$lapsAtom.reportWrite(value, super.laps, () {
      super.laps = value;
    });
  }

  late final _$elapsedLapsAtom = Atom(name: '_StopwatchStore.elapsedLaps', context: context);

  @override
  Duration get elapsedLaps {
    _$elapsedLapsAtom.reportRead();
    return super.elapsedLaps;
  }

  @override
  set elapsedLaps(Duration value) {
    _$elapsedLapsAtom.reportWrite(value, super.elapsedLaps, () {
      super.elapsedLaps = value;
    });
  }

  late final _$_StopwatchStoreActionController =
      ActionController(name: '_StopwatchStore', context: context);

  @override
  void startOrStop() {
    final _$actionInfo =
        _$_StopwatchStoreActionController.startAction(name: '_StopwatchStore.startOrStop');
    try {
      return super.startOrStop();
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void lapOrReset() {
    final _$actionInfo =
        _$_StopwatchStoreActionController.startAction(name: '_StopwatchStore.lapOrReset');
    try {
      return super.lapOrReset();
    } finally {
      _$_StopwatchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
elapsed: ${elapsed},
laps: ${laps},
elapsedLaps: ${elapsedLaps},
fastestAndSlowestLapIds: ${fastestAndSlowestLapIds}
    ''';
  }
}
