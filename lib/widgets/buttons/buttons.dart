import 'package:flutter/Cupertino.dart';

import 'package:stopwatch_app/widgets/buttons/reset_lap_button.dart';
import 'package:stopwatch_app/widgets/buttons/start_stop_button.dart';

class Buttons extends StatefulWidget {
  final double radius;
  final Function start;
  final Function stop;
  final Function reset;
  final Function lap;

  const Buttons(
      {Key? key,
      required this.radius,
      required this.start,
      required this.stop,
      required this.reset,
      required this.lap})
      : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> with SingleTickerProviderStateMixin {
  var _isRunning = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: widget.radius / 2.2,
            height: widget.radius / 2.2,
            child: ResetButton(
              onPressed: () {
                if (_isRunning) {
                  widget.lap();
                } else {
                  widget.reset();
                }
              },
              isRunning: _isRunning,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: widget.radius / 2.2,
            height: widget.radius / 2.2,
            child: StartStopButton(
              isRunning: _isRunning,
              onPressed: () {
                if (_isRunning) {
                  widget.stop();
                } else {
                  widget.start();
                }
                setState(() {
                  _isRunning = !_isRunning;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
