class Breakpoints {
  // Material Design 3 breakpoints
  static const double xs = 0; // 0-599px
  static const double sm = 600; // 600-904px
  static const double md = 905; // 905-1239px
  static const double lg = 1240; // 1240-1439px
  static const double xl = 1440; // 1440px+
}

class AppConstants {
  // Chart intervals
  static const List<String> timeIntervals = ['5m', '15m', '30m', '1h', '4h', '1d'];
  static const String defaultTimeInterval = '30m';

  // Default time ranges
  static const List<String> timeRanges = ['1h', '4h', '8h', '1d', '7d', '30d', 'Custom'];

  // KPI types
  static const List<String> kpiTypes = [
    'Output',
    'Performance',
    'Availability',
    'Quality',
    'OEE',
    'OOE',
    'Asset Utilization',
    'Total Asset Utilization'
  ];

  // Machine statuses
  static const List<String> machineStatuses = ['active', 'inactive', 'decommissioned'];
}
