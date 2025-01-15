import 'dart:async';

import 'package:logging/logging.dart';
import 'package:logging_to_logcat/logging_to_logcat_platform_interface.dart';

/// Extension for Logger of the logging package
extension LogcatExtension on Logger {
  /// Makes the logger write it's output to Androids logcat. Does only have to
  /// be called once during the startup of the app.
  StreamSubscription<LogRecord>? activateLogcat() {
    return onRecord.listen((record) {
      LoggingToLogcatPlatformInterface.instance.logToLogcat(
        level: record.level.name,
        message: record.message,
        name: record.loggerName,
      );
    });
  }
}
