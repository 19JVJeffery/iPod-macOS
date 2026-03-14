import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class WindowControlsService {
  WindowControlsService._();

  static const MethodChannel _channel =
      MethodChannel('classipod/window_controls');

  static bool get isSupported =>
      defaultTargetPlatform == TargetPlatform.macOS;

  static Future<void> close() => _invoke('close');

  static Future<void> minimize() => _invoke('minimize');

  static Future<void> zoom() => _invoke('zoom');

  static Future<void> _invoke(String method) async {
    if (!isSupported) {
      return;
    }

    try {
      await _channel.invokeMethod<void>(method);
    } on PlatformException {
      // Swallow platform errors to avoid user-facing crashes.
    }
  }
}
