import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/models.dart';
import '../../../services/services.dart';
import 'machine_filter.dart';
import 'time_range_filter.dart';

class FilterSidebar extends ConsumerWidget {
  final bool isOpen;
  final VoidCallback onToggle;
  final FilterState filterState;

  const FilterSidebar({
    super.key,
    required this.isOpen,
    required this.onToggle,
    required this.filterState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    width: isOpen ? 320 : 0,
    child: isOpen
        ? Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).dividerColor.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
            child: Column(
              children: [
                _buildFilterHeader(context),
                _buildFilterContent(context, ref),
              ],
            ),
          )
        : const SizedBox.shrink(),
  );

  Widget _buildFilterHeader(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor.withOpacity(0.2),
          width: 1,
        ),
      ),
    ),
    child: Row(
      children: [
        Icon(Icons.tune, color: Theme.of(context).primaryColor),
        const SizedBox(width: 8),
        Text(
          'Filters',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: onToggle,
          icon: const Icon(Icons.close),
          iconSize: 20,
          tooltip: 'Close Filters',
        ),
      ],
    ),
  );

  Widget _buildFilterContent(BuildContext context, WidgetRef ref) => Expanded(
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMachineSelectionSection(context, ref),
          const SizedBox(height: 24),
          _buildTimeRangeSection(context, ref),
          const SizedBox(height: 32),
          _buildActionButtons(context, ref),
        ],
      ),
    ),
  );

  Widget _buildMachineSelectionSection(BuildContext context, WidgetRef ref) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Machine Selection',
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          MachineFilter(
            currentFilters: filterState,
            onFiltersChanged: (newFilters) {
              ref
                  .read(filterNotifierProvider.notifier)
                  .updateFilters(newFilters);
            },
            compact: false,
          ),
        ],
      );

  Widget _buildTimeRangeSection(BuildContext context, WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Time Range',
        style: Theme.of(
          context,
        ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(height: 8),
      TimeRangeFilter(
        currentRange: filterState.dateRange,
        onRangeChanged: (newRange) {
          ref.read(filterNotifierProvider.notifier).updateDateRange(newRange);
        },
        compact: false,
      ),
    ],
  );

  Widget _buildActionButtons(BuildContext context, WidgetRef ref) => Row(
    children: [
      Expanded(
        child: OutlinedButton.icon(
          onPressed: () {
            ref.read(filterNotifierProvider.notifier).resetFilters();
          },
          icon: const Icon(Icons.clear, size: 18),
          label: const Text('CLEAR'),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: ElevatedButton.icon(
          onPressed: () {
            // Filters are applied automatically
            // This could trigger a refresh if needed
          },
          icon: const Icon(Icons.check, size: 18),
          label: const Text('APPLY'),
        ),
      ),
    ],
  );
}
