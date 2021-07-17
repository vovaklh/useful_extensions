part of useful_extensions;

extension Logging on Object {
  Type get _classType => runtimeType;
  Logger get _logger => Logger(printer: _LoggerPrinter(_classType.toString()));

  void logInfo(String message, [dynamic error]) => _logger.i(message, error);

  void logError(String message, [dynamic error]) => _logger.e(message, error);

  void logDebug(String message, [dynamic error]) => _logger.d(message, error);

  void logWarning(String message, [dynamic error]) => _logger.w(message, error);

  void logWtf(String message, [dynamic error]) => _logger.wtf(message, error);
}

class _LoggerPrinter extends LogPrinter {
  final String className;
  _LoggerPrinter(this.className);
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    final error = event.error ?? '';
    return [color!('${DateTime.now()} $emoji $className: $message; $error')];
  }
}
