import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

@RoutePage()
class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(child: Placeholder()),
        ],
      ),
    );
  }
}
