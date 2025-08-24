import 'package:flutter/material.dart';
import '../../../core/constants/breakpoints.dart';

class TimeRangeFilter extends StatefulWidget {
  final DateTimeRange currentRange;
  final Function(DateTimeRange) onRangeChanged;
  final List<String>? customOptions;
  final bool compact;

  const TimeRangeFilter({
    super.key,
    required this.currentRange,
    required this.onRangeChanged,
    this.customOptions,
    this.compact = false,
  });

  @override
  State<TimeRangeFilter> createState() => _TimeRangeFilterState();
}

class _TimeRangeFilterState extends State<TimeRangeFilter> {
  late DateTimeRange _selectedRange;
  String? _selectedPreset;

  @override
  void initState() {
    super.initState();
    _selectedRange = widget.currentRange;
    _selectedPreset = _getPresetFromRange(_selectedRange);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.compact) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
                  Text(
          'Time:',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.9),
            fontWeight: FontWeight.w500,
          ),
        ),
          const SizedBox(width: 8),
          Container(
            constraints: const BoxConstraints(minWidth: 140),
            child: DropdownButton<String>(
              value: _selectedPreset,
              items: AppConstants.timeRanges.map((preset) => DropdownMenuItem(
                value: preset,
                child: Text(preset, style: const TextStyle(fontSize: 13)),
              )).toList(),
              onChanged: (preset) {
                if (preset != null) {
                  _selectPreset(preset);
                }
              },
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
              icon: Icon(
                Icons.arrow_drop_down,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
              underline: Container(
                height: 2,
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            ),
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
              'Time Range',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ...AppConstants.timeRanges.map((preset) {
                  final isSelected = _selectedPreset == preset;
                  return FilterChip(
                    label: Text(preset),
                    selected: isSelected,
                    onSelected: (selected) {
                      if (selected) {
                        _selectPreset(preset);
                      }
                    },
                  );
                }),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildDateField(
                    label: 'Start Date',
                    value: _selectedRange.start,
                    onChanged: (date) {
                      if (date != null) {
                        _updateRange(
                          DateTimeRange(
                            start: date,
                            end: _selectedRange.end,
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildDateField(
                    label: 'End Date',
                    value: _selectedRange.end,
                    onChanged: (date) {
                      if (date != null) {
                        _updateRange(
                          DateTimeRange(
                            start: _selectedRange.start,
                            end: date,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildTimeField(
                    label: 'Start Time',
                    value: _selectedRange.start,
                    onChanged: (time) {
                      if (time != null) {
                        _updateRange(
                          DateTimeRange(
                            start: DateTime(
                              _selectedRange.start.year,
                              _selectedRange.start.month,
                              _selectedRange.start.day,
                              time.hour,
                              time.minute,
                            ),
                            end: _selectedRange.end,
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildTimeField(
                    label: 'End Time',
                    value: _selectedRange.end,
                    onChanged: (time) {
                      if (time != null) {
                        _updateRange(
                          DateTimeRange(
                            start: _selectedRange.start,
                            end: DateTime(
                              _selectedRange.end.year,
                              _selectedRange.end.month,
                              _selectedRange.end.day,
                              time.hour,
                              time.minute,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateField({
    required String label,
    required DateTime value,
    required Function(DateTime?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: value,
              firstDate: DateTime.now().subtract(const Duration(days: 365)),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            onChanged(date);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${value.day}/${value.month}/${value.year}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                const Icon(Icons.calendar_today, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeField({
    required String label,
    required DateTime value,
    required Function(TimeOfDay?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(value),
            );
            onChanged(time);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${value.hour.toString().padLeft(2, '0')}:${value.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                const Icon(Icons.access_time, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _selectPreset(String preset) {
    setState(() {
      _selectedPreset = preset;
    });

    final now = DateTime.now();
    DateTimeRange newRange;

    switch (preset) {
      case '1h':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(hours: 1)),
          end: now,
        );
        break;
      case '4h':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(hours: 4)),
          end: now,
        );
        break;
      case '8h':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(hours: 8)),
          end: now,
        );
        break;
      case '1d':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(days: 1)),
          end: now,
        );
        break;
      case '7d':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(days: 7)),
          end: now,
        );
        break;
      case '30d':
        newRange = DateTimeRange(
          start: now.subtract(const Duration(days: 30)),
          end: now,
        );
        break;
      case 'Custom':
      default:
        return; // Don't change range for custom
    }

    _updateRange(newRange);
  }

  void _updateRange(DateTimeRange newRange) {
    setState(() {
      _selectedRange = newRange;
      _selectedPreset = _getPresetFromRange(newRange);
    });
    widget.onRangeChanged(newRange);
  }

  String? _getPresetFromRange(DateTimeRange range) {
    final duration = range.duration;
    if (duration.inHours == 1) return '1h';
    if (duration.inHours == 4) return '4h';
    if (duration.inHours == 8) return '8h';
    if (duration.inDays == 1) return '1d';
    if (duration.inDays == 7) return '7d';
    if (duration.inDays == 30) return '30d';
    return 'Custom';
  }
}
