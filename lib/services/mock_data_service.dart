import '../models/models.dart';

class MockDataService {
  static List<Plant> getMockPlants() {
    final now = DateTime.now();
    return [
      Plant(
        plantId: 'plant1',
        plantName: 'Main Manufacturing Plant',
        location: 'Industrial District A',
        createdAt: now.subtract(const Duration(days: 365)),
        updatedAt: now,
      ),
      Plant(
        plantId: 'plant2',
        plantName: 'Secondary Production Facility',
        location: 'Industrial District B',
        createdAt: now.subtract(const Duration(days: 300)),
        updatedAt: now,
      ),
    ];
  }

  static List<Unit> getMockUnits(String plantId) {
    final now = DateTime.now();
    return [
      Unit(
        unitId: 'unit1',
        unitName: 'Production Unit A',
        plantId: plantId,
        createdAt: now.subtract(const Duration(days: 300)),
        updatedAt: now,
      ),
      Unit(
        unitId: 'unit2',
        unitName: 'Production Unit B',
        plantId: plantId,
        createdAt: now.subtract(const Duration(days: 250)),
        updatedAt: now,
      ),
    ];
  }

  static List<Segment> getMockSegments(String unitId) {
    final now = DateTime.now();
    return [
      Segment(
        segmentId: 'segment1',
        segmentName: 'Assembly Line 1',
        unitId: unitId,
        createdAt: now.subtract(const Duration(days: 250)),
        updatedAt: now,
      ),
      Segment(
        segmentId: 'segment2',
        segmentName: 'Assembly Line 2',
        unitId: unitId,
        createdAt: now.subtract(const Duration(days: 200)),
        updatedAt: now,
      ),
    ];
  }

  static List<Line> getMockLines(String segmentId) {
    final now = DateTime.now();
    return [
      Line(
        lineId: 'line1',
        lineName: 'Production Line Alpha',
        segmentId: segmentId,
        createdAt: now.subtract(const Duration(days: 200)),
        updatedAt: now,
      ),
      Line(
        lineId: 'line2',
        lineName: 'Production Line Beta',
        segmentId: segmentId,
        createdAt: now.subtract(const Duration(days: 150)),
        updatedAt: now,
      ),
    ];
  }

  static List<Machine> getMockMachines(String lineId) {
    final now = DateTime.now();
    return [
      Machine(
        machineId: 'machine1',
        machineName: 'CNC Machine Alpha',
        lineId: lineId,
        status: MachineStatus.active,
        createdAt: now.subtract(const Duration(days: 150)),
        updatedAt: now,
      ),
      Machine(
        machineId: 'machine2',
        machineName: 'Robotic Arm Beta',
        lineId: lineId,
        status: MachineStatus.active,
        createdAt: now.subtract(const Duration(days: 100)),
        updatedAt: now,
      ),
      Machine(
        machineId: 'machine3',
        machineName: 'Conveyor System Gamma',
        lineId: lineId,
        status: MachineStatus.active,
        createdAt: now.subtract(const Duration(days: 120)),
        updatedAt: now,
      ),
    ];
  }

  static OutputTimeseriesResponse getMockOutputTimeseries(FilterState filters) {
    final now = DateTime.now();
    final dataPoints = <OutputDataPoint>[];

    // Generate 24 hours of data points
    for (int i = 23; i >= 0; i--) {
      final timestamp = now.subtract(Duration(hours: i));
      final value =
          50 + (20 * (i % 3)) + (10 * (i % 2)); // Varying output values
      dataPoints.add(
        OutputDataPoint(timestamp: timestamp, value: value.toDouble()),
      );
    }

    return OutputTimeseriesResponse(
      startTime: now.subtract(const Duration(hours: 24)),
      endTime: now,
      interval: '1h',
      series: [
        OutputTimeseries(
          machineId: filters.machineId ?? 'machine1',
          data: dataPoints,
        ),
      ],
    );
  }

  static PerformanceTimeseriesResponse getMockPerformanceTimeseries(
    FilterState filters,
  ) {
    final now = DateTime.now();
    final dataPoints = <PerformanceDataPoint>[];

    // Generate 24 hours of performance data
    for (int i = 23; i >= 0; i--) {
      final timestamp = now.subtract(Duration(hours: i));
      final value =
          75 + (15 * (i % 4)) + (5 * (i % 3)); // Varying performance values
      dataPoints.add(
        PerformanceDataPoint(timestamp: timestamp, value: value.toDouble()),
      );
    }

    return PerformanceTimeseriesResponse(
      startTime: now.subtract(const Duration(hours: 24)),
      endTime: now,
      interval: '1h',
      series: [
        PerformanceTimeseries(
          machineId: filters.machineId ?? 'machine1',
          data: dataPoints,
        ),
      ],
    );
  }

  static OutputAggregateResponse getMockOutputAggregate(FilterState filters) =>
      OutputAggregateResponse(
        startTime: filters.dateRange.start,
        endTime: filters.dateRange.end,
        groupBy: 'machine',
        results: [
          OutputResult(
            machineId: filters.machineId ?? 'machine1',
            totalOutputQty: 1200,
            rejectedOutputQty: 48,
            goodOutputQty: 1152,
            yieldRatio: 0.96,
          ),
        ],
      );

  static PerformanceAggregateResponse getMockPerformanceAggregate(
    FilterState filters,
  ) => PerformanceAggregateResponse(
    startTime: filters.dateRange.start,
    endTime: filters.dateRange.end,
    groupBy: 'machine',
    results: [
      const PerformanceResult(key: 'efficiency', value: 87.5),
      const PerformanceResult(key: 'availability', value: 92.3),
      const PerformanceResult(key: 'quality', value: 96.0),
    ],
  );
}
