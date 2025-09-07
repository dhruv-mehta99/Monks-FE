import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/models.dart';
import '../../../services/services.dart';

class MachineFilter extends ConsumerWidget {
  final FilterState currentFilters;
  final Function(FilterState) onFiltersChanged;
  final bool compact;

  const MachineFilter({
    super.key,
    required this.currentFilters,
    required this.onFiltersChanged,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantsAsync = ref.watch(plantsProvider);
    final unitsAsync = currentFilters.plantId != null
        ? ref.watch(unitsByPlantProvider(currentFilters.plantId!))
        : const AsyncValue.data(<Unit>[]);
    final segmentsAsync = currentFilters.unitId != null
        ? ref.watch(segmentsByUnitProvider(currentFilters.unitId!))
        : const AsyncValue.data(<Segment>[]);
    final linesAsync = currentFilters.segmentId != null
        ? ref.watch(linesBySegmentProvider(currentFilters.segmentId!))
        : const AsyncValue.data(<Line>[]);
    final machinesAsync = currentFilters.unitId != null
        ? ref.watch(
            machinesByUnitProvider(
              currentFilters.unitId!,
              lineId: currentFilters.lineId,
            ),
          )
        : const AsyncValue.data(<Machine>[]);

    if (compact) {
      return Wrap(
        spacing: 12,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _buildCompactFilterDropdown<Plant>(
            context: context,
            label: 'Plant',
            value: currentFilters.plantId,
            items: plantsAsync.when(
              data: (plants) => plants,
              loading: () => <Plant>[],
              error: (_, __) => <Plant>[],
            ),
            itemBuilder: (plant) => DropdownMenuItem(
              value: plant.plantId,
              child: Text(plant.plantName),
            ),
            onChanged: (plantId) => _updateFilters(ref, plantId: plantId),
          ),
          _buildCompactFilterDropdown<Unit>(
            context: context,
            label: 'Unit',
            value: currentFilters.unitId,
            items: unitsAsync.when(
              data: (units) => units,
              loading: () => <Unit>[],
              error: (_, __) => <Unit>[],
            ),
            itemBuilder: (unit) => DropdownMenuItem(
              value: unit.unitId,
              child: Text(unit.unitName),
            ),
            onChanged: (unitId) => _updateFilters(ref, unitId: unitId),
            enabled: currentFilters.plantId != null,
          ),
          _buildCompactFilterDropdown<Segment>(
            context: context,
            label: 'Segment',
            value: currentFilters.segmentId,
            items: segmentsAsync.when(
              data: (segments) => segments,
              loading: () => <Segment>[],
              error: (_, __) => <Segment>[],
            ),
            itemBuilder: (segment) => DropdownMenuItem(
              value: segment.segmentId,
              child: Text(segment.segmentName),
            ),
            onChanged: (segmentId) => _updateFilters(ref, segmentId: segmentId),
            enabled: currentFilters.unitId != null,
          ),
          _buildCompactFilterDropdown<Line>(
            context: context,
            label: 'Line',
            value: currentFilters.lineId,
            items: linesAsync.when(
              data: (lines) => lines,
              loading: () => <Line>[],
              error: (_, __) => <Line>[],
            ),
            itemBuilder: (line) => DropdownMenuItem(
              value: line.lineId,
              child: Text(line.lineName),
            ),
            onChanged: (lineId) => _updateFilters(ref, lineId: lineId),
            enabled: currentFilters.segmentId != null,
          ),
          _buildCompactFilterDropdown<Machine>(
            context: context,
            label: 'Machine',
            value: currentFilters.machineId,
            items: machinesAsync.when(
              data: (machines) => machines,
              loading: () => <Machine>[],
              error: (_, __) => <Machine>[],
            ),
            itemBuilder: (machine) => DropdownMenuItem(
              value: machine.machineId,
              child: Text(machine.machineName),
            ),
            onChanged: (machineId) => _updateFilters(ref, machineId: machineId),
            enabled: currentFilters.unitId != null,
          ),
        ],
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Machine Selection',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            _buildFilterDropdown<Plant>(
              label: 'Plant',
              value: currentFilters.plantId,
              items: plantsAsync.when(
                data: (plants) => plants,
                loading: () => <Plant>[],
                error: (_, __) => <Plant>[],
              ),
              itemBuilder: (plant) => DropdownMenuItem(
                value: plant.plantId,
                child: Text(plant.plantName),
              ),
              onChanged: (plantId) => _updateFilters(ref, plantId: plantId),
            ),
            const SizedBox(height: 12),
            _buildFilterDropdown<Unit>(
              label: 'Unit',
              value: currentFilters.unitId,
              items: unitsAsync.when(
                data: (units) => units,
                loading: () => <Unit>[],
                error: (_, __) => <Unit>[],
              ),
              itemBuilder: (unit) => DropdownMenuItem(
                value: unit.unitId,
                child: Text(unit.unitName),
              ),
              onChanged: (unitId) => _updateFilters(ref, unitId: unitId),
              enabled: currentFilters.plantId != null,
            ),
            const SizedBox(height: 12),
            _buildFilterDropdown<Segment>(
              label: 'Segment',
              value: currentFilters.segmentId,
              items: segmentsAsync.when(
                data: (segments) => segments,
                loading: () => <Segment>[],
                error: (_, __) => <Segment>[],
              ),
              itemBuilder: (segment) => DropdownMenuItem(
                value: segment.segmentId,
                child: Text(segment.segmentName),
              ),
              onChanged: (segmentId) =>
                  _updateFilters(ref, segmentId: segmentId),
              enabled: currentFilters.unitId != null,
            ),
            const SizedBox(height: 12),
            _buildFilterDropdown<Line>(
              label: 'Line',
              value: currentFilters.lineId,
              items: linesAsync.when(
                data: (lines) => lines,
                loading: () => <Line>[],
                error: (_, __) => <Line>[],
              ),
              itemBuilder: (line) => DropdownMenuItem(
                value: line.lineId,
                child: Text(line.lineName),
              ),
              onChanged: (lineId) => _updateFilters(ref, lineId: lineId),
              enabled: currentFilters.segmentId != null,
            ),
            const SizedBox(height: 12),
            _buildFilterDropdown<Machine>(
              label: 'Machine',
              value: currentFilters.machineId,
              items: machinesAsync.when(
                data: (machines) => machines,
                loading: () => <Machine>[],
                error: (_, __) => <Machine>[],
              ),
              itemBuilder: (machine) => DropdownMenuItem(
                value: machine.machineId,
                child: Text(machine.machineName),
              ),
              onChanged: (machineId) =>
                  _updateFilters(ref, machineId: machineId),
              enabled: currentFilters.unitId != null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterDropdown<T>({
    required String label,
    required String? value,
    required List<T> items,
    required DropdownMenuItem<String> Function(T) itemBuilder,
    required Function(String?) onChanged,
    bool enabled = true,
  }) => DropdownButtonFormField<String>(
    decoration: InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
    ),
    initialValue: value?.isEmpty == true ? null : value,
    items: [
      const DropdownMenuItem(value: null, child: Text('Select...')),
      ...items.map(itemBuilder),
    ],
    onChanged: enabled ? onChanged : null,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please select a $label';
      }
      return null;
    },
  );

  void _updateFilters(
    WidgetRef ref, {
    String? plantId,
    String? unitId,
    String? segmentId,
    String? lineId,
    String? machineId,
  }) {
    FilterState newFilters = currentFilters;

    // If plantId is provided, update it and clear all dependent fields
    if (plantId != null) {
      newFilters = currentFilters.copyWith(
        plantId: plantId.isEmpty ? null : plantId,
        unitId: null,
        segmentId: null,
        lineId: null,
        machineId: null,
      );
    }
    // If unitId is provided, update it and clear dependent fields
    else if (unitId != null) {
      newFilters = currentFilters.copyWith(
        unitId: unitId.isEmpty ? null : unitId,
        segmentId: null,
        lineId: null,
        machineId: null,
      );
    }
    // If segmentId is provided, update it and clear dependent fields
    else if (segmentId != null) {
      newFilters = currentFilters.copyWith(
        segmentId: segmentId.isEmpty ? null : segmentId,
        lineId: null,
        machineId: null,
      );
    }
    // If lineId is provided, update it and clear dependent fields
    else if (lineId != null) {
      newFilters = currentFilters.copyWith(
        lineId: lineId.isEmpty ? null : lineId,
        machineId: null,
      );
    }
    // If machineId is provided, only update it
    else if (machineId != null) {
      newFilters = currentFilters.copyWith(
        machineId: machineId.isEmpty ? null : machineId,
      );
    }

    onFiltersChanged(newFilters);
  }

  Widget _buildCompactFilterDropdown<T>({
    required BuildContext context,
    required String label,
    required String? value,
    required List<T> items,
    required DropdownMenuItem<String> Function(T) itemBuilder,
    required Function(String?) onChanged,
    bool enabled = true,
  }) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        '$label:',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(
            context,
          ).textTheme.bodyMedium?.color?.withOpacity(0.9),
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(width: 4),
      Container(
        constraints: const BoxConstraints(minWidth: 120, maxWidth: 180),
        child: DropdownButton<String>(
          value: value,
          items: [
            const DropdownMenuItem<String>(
              value: null,
              child: Text('Select...', style: TextStyle(fontSize: 13)),
            ),
            ...items.map(itemBuilder),
          ],
          onChanged: enabled ? onChanged : null,
          style: TextStyle(
            fontSize: 13,
            color: enabled
                ? Theme.of(context).textTheme.bodyMedium?.color
                : Colors.grey,
          ),
          icon: Icon(
            Icons.arrow_drop_down,
            size: 18,
            color: enabled ? Theme.of(context).primaryColor : Colors.grey,
          ),
          underline: Container(
            height: 2,
            color: enabled
                ? Theme.of(context).primaryColor.withOpacity(0.6)
                : Colors.grey.withOpacity(0.3),
          ),
        ),
      ),
    ],
  );
}
