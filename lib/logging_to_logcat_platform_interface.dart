import 'package:logging_to_logcat/logging_to_logcat_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class LoggingToLogcatPlatformInterface extends PlatformInterface {
  LoggingToLogcatPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static LoggingToLogcatPlatformInterface _instance =
      LoggingToLogcatMethodChannel();

  static LoggingToLogcatPlatformInterface get instance => _instance;

  static set instance(LoggingToLogcatPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> logToLogcat({
    required String level,
    required String message,
    required String name,
  }) {
    throw UnimplementedError('logToLogcat has not been implemented');
  }
}
