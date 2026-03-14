import 'dart:math' as math;

import 'package:classipod/core/extensions/build_context_extensions.dart';
import 'package:classipod/features/settings/controller/settings_preferences_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceScreen extends ConsumerWidget {
  final Widget child;
  final double borderWidth;
  final double cornerRadius;

  const DeviceScreen({
    super.key,
    required this.child,
    required this.borderWidth,
    required this.cornerRadius,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTouchScreenEnabled = ref.watch(
      settingsPreferencesControllerProvider.select(
        (e) => e.isTouchScreenEnabled,
      ),
    );

    return AbsorbPointer(
      absorbing: !isTouchScreenEnabled,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;
          final double innerWidth =
              math.max(0.0, screenWidth - (borderWidth * 2));
          final double innerHeight =
              math.max(0.0, screenHeight - (borderWidth * 2));

          return SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(cornerRadius),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.appDeviceScreenBackgroundColor,
                  borderRadius: BorderRadius.circular(cornerRadius),
                  border: Border.all(
                    color: context.appDeviceScreenBorderColor,
                    width: borderWidth,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(borderWidth),
                  child: SizedBox(
                    width: innerWidth,
                    height: innerHeight,
                    child: child,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
