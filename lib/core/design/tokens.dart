import 'package:flutter/material.dart';

/// Design tokens for consistent styling across the app
class AppTokens {
  // Colors
  static const chartColors = [
    Color(0xFF2196F3), // Blue
    Color(0xFF4CAF50), // Green
    Color(0xFFFFC107), // Amber
    Color(0xFFF44336), // Red
    Color(0xFF9C27B0), // Purple
    Color(0xFF00BCD4), // Cyan
    Color(0xFFFF9800), // Orange
    Color(0xFF795548), // Brown
  ];

  static const heatmapColors = [
    Color(0xFFECEFF1), // Very Light Blue Grey
    Color(0xFF90CAF9), // Light Blue
    Color(0xFF2196F3), // Blue
    Color(0xFF1976D2), // Dark Blue
    Color(0xFF0D47A1), // Very Dark Blue
  ];

  // Neutrals / surfaces
  static const gridColor = Color(0x14000000); // ~8% black
  static const tooltipBg = Colors.black87;

  // Typography
  static const chartTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static const chartAxisLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  static const chartLegend = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  static const chartTooltip = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: Colors.white,
  );

  // Dimensions
  static const chartPadding = EdgeInsets.all(16.0);
  static const chartMargin = EdgeInsets.all(8.0);
  static const chartCornerRadius = 8.0;
  static const barRadius = 6.0;
  static const chartBarWidth = 16.0;
  static const groupedBarsSpace = 6.0;
  static const chartLineWidth = 2.0;
  static const chartPointRadius = 4.0;
  static const tooltipRadius = 6.0;
  static const legendGap = 12.0;

  // Opacity
  static const areaOpacity = 0.2;

  // Animation
  static const chartAnimationDuration = Duration(milliseconds: 250);
  static const chartAnimationCurve = Curves.easeInOut;
}
