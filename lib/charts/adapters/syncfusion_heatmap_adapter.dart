import 'package:flutter/material.dart';

import '../../core/design/tokens.dart';
import '../core/chart_adapter.dart';
import '../core/chart_models.dart';

/// A simple heatmap implementation that does not rely on external chart libs.
/// It keeps the adapter name for compatibility with the registry expectations.
class SyncfusionHeatmapAdapter extends HeatmapAdapter {
  SyncfusionHeatmapAdapter({
    required super.cells,
    required super.xAxis,
    required super.yAxis,
    required super.colorStops,
    super.tooltip,
    super.animation,
  });

  @override
  Widget build(BuildContext context) {
    if (cells.isEmpty) {
      return const SizedBox.shrink();
    }

    final maxX = cells.map((c) => c.x).fold<int>(0, (p, c) => c > p ? c : p);
    final maxY = cells.map((c) => c.y).fold<int>(0, (p, c) => c > p ? c : p);

    // Build a matrix for quick lookup
    final Map<(int, int), HeatCell> cellMap = {
      for (final c in cells) (c.x, c.y): c,
    };

    final minVal = cells.map((e) => e.value).reduce((a, b) => a < b ? a : b);
    final maxVal = cells.map((e) => e.value).reduce((a, b) => a > b ? a : b);

    // Work on a copy to avoid mutating possibly unmodifiable lists
    final stops = List<HeatScaleStop>.from(colorStops)
      ..sort((a, b) => a.value.compareTo(b.value));

    Color colorFor(double v) {
      if (stops.isEmpty) return AppTokens.heatmapColors[0];
      // Normalize
      final t = (v - minVal) / ((maxVal - minVal) == 0 ? 1 : (maxVal - minVal));
      // Find two stops around t
      HeatScaleStop? prev;
      for (final s in stops) {
        if (t <= s.value) {
          if (prev == null) return s.color;
          final localT =
              (t - prev!.value) /
              ((s.value - prev!.value) == 0 ? 1 : (s.value - prev!.value));
          return Color.lerp(prev!.color, s.color, localT) ?? s.color;
        }
        prev = s;
      }
      return stops.last.color;
    }

    final tooltipEnabled = tooltip?.enabled ?? true;

    Widget gridCell(int x, int y) {
      final c = cellMap[(x, y)];
      final v = c?.value ?? minVal;
      final color = colorFor(v);
      final cell = Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AppTokens.chartCornerRadius / 2),
        ),
      );
      if (!tooltipEnabled || c == null) return cell;
      return Tooltip(
        message:
            c.label ?? '(${x + 1}, ${y + 1}): ${c.value.toStringAsFixed(1)}',
        textStyle: AppTokens.chartTooltip,
        decoration: BoxDecoration(
          color: AppTokens.tooltipBg,
          borderRadius: BorderRadius.circular(AppTokens.tooltipRadius),
        ),
        child: cell,
      );
    }

    final grid = Column(
      children: List.generate(maxY + 1, (row) {
        return Expanded(
          child: Row(
            children: List.generate(maxX + 1, (col) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: gridCell(col, row),
                ),
              );
            }),
          ),
        );
      }),
    );

    final axisTitles = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          if (yAxis.title != null)
            Text(yAxis.title!, style: AppTokens.chartAxisLabel),
          const Spacer(),
          if (xAxis.title != null)
            Text(xAxis.title!, style: AppTokens.chartAxisLabel),
        ],
      ),
    );

    final legend = _buildLegend(stops);

    final animated = AnimatedContainer(
      duration: animation?.duration ?? AppTokens.chartAnimationDuration,
      curve: animation?.curve ?? AppTokens.chartAnimationCurve,
      padding: AppTokens.chartPadding,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppTokens.chartCornerRadius),
          child: grid,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [axisTitles, animated, const SizedBox(height: 8), legend],
    );
  }

  Widget _buildLegend(List<HeatScaleStop> stops) {
    if (stops.length < 2) return const SizedBox.shrink();
    final colors = <Color>[];
    for (int i = 0; i < stops.length - 1; i++) {
      final a = stops[i];
      final b = stops[i + 1];
      colors.add(a.color);
      colors.add(b.color);
    }

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              gradient: LinearGradient(colors: colors),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Wrap(
          spacing: 8,
          children: [
            Text(
              stops.first.value.toStringAsFixed(1),
              style: AppTokens.chartAxisLabel,
            ),
            Text(
              stops.last.value.toStringAsFixed(1),
              style: AppTokens.chartAxisLabel,
            ),
          ],
        ),
      ],
    );
  }
}
