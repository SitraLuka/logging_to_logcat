import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:logging_to_logcat/logging_to_logcat_platform_interface.dart';

class LoggingToLogcatMethodChannel extends LoggingToLogcatPlatformInterface {
  @visibleForTesting
  final methodChannel = const MethodChannel('logging_to_logcat');

  @override
  Future<void> logToLogcat({
    required String level,
    required String message,
    required String name,
  }) async {
    await methodChannel.invokeMethod<void>('log', [
      level,
      message,
      name,
    ]);
  }
}
