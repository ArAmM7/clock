import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/dashboard_pages_enum.dart';
import '../../extensions/extensions.dart';
import '../../themes/custom_theme.dart';

@RoutePage()
class WorldClockPage extends StatelessWidget {
  const WorldClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Text(
                'keywords.edit'.tr(),
                style: context.theme.body.copyWith(
                  color: context.orange,
                ),
              ),
            ),
            largeTitle: Text(
              DashboardPagesEnum.WORLDCLOCK.labelTranslationKey.tr(),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Icon(
                CupertinoIcons.add,
                color: context.orange,
              ),
            ),
          ),
          const SliverFillRemaining(child: Placeholder()),
        ],
      ),
    );
  }
}
