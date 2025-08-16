import 'package:flutter/material.dart';

class KpiItem {
  const KpiItem({required this.id, required this.label});
  final String id;
  final String label;
}

class KpiFilters {
  KpiFilters({
    required this.dateRange,
    required this.plant,
    required this.segment,
    required this.line,
    required this.machine,
  });

  final DateTimeRange dateRange;
  final String plant;
  final String segment;
  final String line;
  final String machine;

  KpiFilters copyWith({
    DateTimeRange? dateRange,
    String? plant,
    String? segment,
    String? line,
    String? machine,
  }) {
    return KpiFilters(
      dateRange: dateRange ?? this.dateRange,
      plant: plant ?? this.plant,
      segment: segment ?? this.segment,
      line: line ?? this.line,
      machine: machine ?? this.machine,
    );
  }
}
