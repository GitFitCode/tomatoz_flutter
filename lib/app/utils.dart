import 'package:logger/logger.dart';

/// Function to fill with a zero and always show two digits.
String fill(int n) => n.toString().padLeft(2, "0");

class TomatozLogPrinter extends LogPrinter {
  final String className;

  TomatozLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    AnsiColor color = PrettyPrinter.levelColors[event.level];
    String emoji = PrettyPrinter.levelEmojis[event.level];
    return [color('$emoji $className - ${event.message}')];
  }
}

Logger getLogger(String className) {
  return Logger(printer: TomatozLogPrinter(className));
}
