import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:stopwatch_app/models/lap.dart';

class Stopwatch with ChangeNotifier {
  Stopwatch({Key? key});

  Timer? _timer;
  final List<Lap> _laps = <Lap>[];

  DateTime _initialTime = DateTime.now();
  Duration _previouslyElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;
  Duration _elapsedLaps = Duration.zero;

  Duration get elapsed {
    return _currentlyElapsed + _previouslyElapsed;
  }

  List<Lap> get laps {
    return _laps;
  }

  Duration get elapsedLaps {
    return _elapsedLaps;
  }

  Set<String> get fastestAndSlowestLapIds {
    if (laps.length < 3) {
      return {'1', '2'};
    }
    List<Lap> sortedLaps = _laps.toList();
    sortedLaps.sort(
      (a, b) => a.duration.compareTo(b.duration),
    );
    return {sortedLaps[1].id, sortedLaps.last.id};
  }

  void start() {
    _initialTime = DateTime.now();
    _timer = Timer.periodic(
      const Duration(milliseconds: 64),
      (timer) {
        _currentlyElapsed = DateTime.now().difference(_initialTime);
        notifyListeners();
      },
    );
    if (_laps.isEmpty) {
      lap();
    }
  }

  void stop() {
    _timer!.cancel();
    _previouslyElapsed += _currentlyElapsed;
    _currentlyElapsed = Duration.zero;
  }

  void reset() {
    _timer!.cancel();
    _previouslyElapsed = Duration.zero;
    _currentlyElapsed = Duration.zero;
    _laps.clear();
    _elapsedLaps = Duration.zero;
    notifyListeners();
  }

  void lap() {
    _laps.insert(
      _laps.isEmpty ? 0 : _laps.length - 1,
      Lap(DateTime.now().toIso8601String() + Random().nextInt(420).toString(),
          elapsed - _elapsedLaps),
    );
    _elapsedLaps = elapsed;
  }
}
