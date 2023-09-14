import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';

import '../../../constants/dashboard_pages_enum.dart';
import '../../../extensions/extensions.dart';
import '../../../themes/custom_theme.dart';
import '../../../utils/durations_utils.dart';

class BottomNavigationBar extends HookWidget {
  const BottomNavigationBar({
    super.key,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final onChange = useCallback(
      (index) {
        if (tabsRouter.activeIndex == index) {
          HapticFeedback.lightImpact();
        }

        tabsRouter.setActiveIndex(index);
      },
      [],
    );

    return Material(
      color: Colors.transparent,
      child: BottomAppBar(
        padding: EdgeInsets.only(
          bottom: context.bottomPadding <= 12 ? 12 : 0,
        ),
        clipBehavior: Clip.antiAlias,
        color: context.bottomNavigationBar,
        elevation: 0,
        notchMargin: -8,
        shape: const CircularNotchedRectangle(),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 8, sigmaX: 8),
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: DashboardPagesEnum.values.map(
                (e) {
                  final isActive = tabsRouter.activeIndex == e.index;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () => onChange(e.index),
                      child: Material(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                AnimatedSwitcher(
                                  duration: fastAnimationDuration,
                                  child: Icon(
                                    e.iconPath,
                                    color: isActive
                                        ? context.orange
                                        : context.icon,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(4),
                            Text(
                              e.labelTranslationKey.tr(),
                              style: context.theme.bodySmallBold.copyWith(
                                color: isActive ? context.orange : context.icon,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
