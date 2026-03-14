import 'dart:math' as math;

import 'package:classipod/core/constants/assets.dart';
import 'package:classipod/core/constants/keys.dart';
import 'package:classipod/core/widgets/floating_window_controls.dart';
import 'package:classipod/features/device/widgets/device_controls.dart';
import 'package:classipod/features/device/widgets/device_screen.dart';
import 'package:classipod/features/settings/controller/settings_preferences_controller.dart';
import 'package:classipod/features/settings/models/device_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double _deviceWidth = 443.19754;
const double _deviceHeight = 728.76343;
const double _deviceCornerRadiusRatio = 0.086206336;
const double _screenWidthRatio = 0.860615504;
const double _screenHeightRatio = 0.400055755;
const double _screenTopMarginRatio = 0.040238652;
const double _screenToWheelGapRatio = 0.104932211;
const double _wheelDiameterRatio = 0.602996127;
const double _screenBorderWidthRatio = 0.00766384;
const double _screenCornerRadiusRatio = 0.022309187;

class DeviceFrame extends ConsumerWidget {
  final Widget child;

  const DeviceFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DeviceColor deviceColor = ref.watch(
      settingsPreferencesControllerProvider.select((e) => e.deviceColor),
    );
    final deviceColorStyle = deviceColor.style;

    return Center(
      child: AspectRatio(
        aspectRatio: _deviceWidth / _deviceHeight,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final size = constraints.biggest;
            final double screenOuterWidth = size.width * _screenWidthRatio;
            final double screenOuterHeight = size.height * _screenHeightRatio;
            final double screenBorderWidth =
                screenOuterWidth * _screenBorderWidthRatio;
            final double screenCornerRadius =
                screenOuterWidth * _screenCornerRadiusRatio;
            final double topMargin = size.height * _screenTopMarginRatio;
            final double screenToWheelGap =
                size.height * _screenToWheelGapRatio;
            final double availableWheelHeight =
                size.height -
                topMargin -
                screenOuterHeight -
                screenToWheelGap;
            final double wheelDiameter = math.min(
              size.width * _wheelDiameterRatio,
              math.max(0.0, availableWheelHeight),
            );
            final double bottomMargin = math.max(
              0.0,
              size.height -
                  (topMargin +
                      screenOuterHeight +
                      screenToWheelGap +
                      wheelDiameter),
            );

            final double cornerRadius =
                size.shortestSide * _deviceCornerRadiusRatio;

            return ClipRRect(
              borderRadius: BorderRadius.circular(cornerRadius),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cornerRadius),
                  border: Border.all(
                    color: const Color(0x26000000),
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: const AssetImage(Assets.noiseImage),
                    fit: BoxFit.cover,
                    opacity: deviceColorStyle.noiseOpacity,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: deviceColorStyle.frameGradientColors,
                  ),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      child: SizedBox(
                        height: 20,
                        width: size.width,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 100,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: 20,
                        width: size.width,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 100,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: SizedBox(
                        height: size.height,
                        width: 20,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 100,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        height: size.height,
                        width: 20,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 100,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: _deviceHeight,
                          maxWidth: _deviceWidth,
                        ),
                        child: SizedBox(
                          width: size.width,
                          height: size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: topMargin,
                              ),
                              SizedBox(
                                width: screenOuterWidth,
                                height: screenOuterHeight,
                                child: DeviceScreen(
                                  key: deviceScreenGlobalKey,
                                  borderWidth: screenBorderWidth,
                                  cornerRadius: screenCornerRadius,
                                  child: child,
                                ),
                              ),
                              SizedBox(
                                height: screenToWheelGap,
                              ),
                              SizedBox(
                                width: wheelDiameter,
                                height: wheelDiameter,
                                child: DeviceControls(
                                  key: deviceControlsGlobalKey,
                                ),
                              ),
                              SizedBox(
                                height: bottomMargin,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const _HoverWindowControls(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HoverWindowControls extends StatefulWidget {
  const _HoverWindowControls();

  @override
  State<_HoverWindowControls> createState() => _HoverWindowControlsState();
}

class _HoverWindowControlsState extends State<_HoverWindowControls> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: SizedBox(
          width: 220,
          height: 60,
          child: Align(
            alignment: Alignment.topLeft,
            child: AnimatedOpacity(
              opacity: _isHovering ? 1 : 0,
              duration: const Duration(milliseconds: 140),
              child: AnimatedSlide(
                offset: _isHovering ? Offset.zero : const Offset(0, -0.12),
                duration: const Duration(milliseconds: 140),
                child: IgnorePointer(
                  ignoring: !_isHovering,
                  child: const FloatingWindowControls(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
