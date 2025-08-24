import 'package:flutter/material.dart';
import '../../../models/models.dart';

class KpiDataTable extends StatefulWidget {
  final List<OutputTimeseries> data;
  final String title;
  final bool showPagination;
  final int rowsPerPage;
  final List<String>? columns;
  final Function(String)? onSort;

  const KpiDataTable({
    super.key,
    required this.data,
    required this.title,
    this.showPagination = true,
    this.rowsPerPage = 10,
    this.columns,
    this.onSort,
  });

  @override
  State<KpiDataTable> createState() => _KpiDataTableState();
}

class _KpiDataTableState extends State<KpiDataTable> {
  int _currentPage = 0;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    if (widget.data.isEmpty) {
      return _buildEmptyState();
    }

    final allDataPoints = _getAllDataPoints();
    final sortedData = _sortData(allDataPoints);
    final paginatedData = _paginateData(sortedData);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: _buildColumns(),
                rows: _buildRows(paginatedData),
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,
                headingRowHeight: 56,
                dataRowMinHeight: 52,
                dataRowMaxHeight: 52,
              ),
            ),
            if (widget.showPagination && allDataPoints.length > widget.rowsPerPage) ...[
              const SizedBox(height: 16),
              _buildPagination(allDataPoints.length),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Card(
      child: SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.table_chart,
                size: 48,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 16),
              Text(
                'No data available',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Select filters to view KPI data',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    final defaultColumns = [
      'Timestamp',
      'Machine ID',
      'Value',
      'Unit',
      'Status',
    ];

    final columns = widget.columns ?? defaultColumns;

    return columns.map((column) {
      return DataColumn(
        label: Text(column),
        onSort: (columnIndex, ascending) {
          _onSort(columnIndex, ascending);
        },
      );
    }).toList();
  }

  List<DataRow> _buildRows(List<Map<String, dynamic>> data) {
    return data.map((rowData) {
      return DataRow(
        cells: _buildCells(rowData),
      );
    }).toList();
  }

  List<DataCell> _buildCells(Map<String, dynamic> rowData) {
    final defaultColumns = [
      'Timestamp',
      'Machine ID',
      'Value',
      'Unit',
      'Status',
    ];

    final columns = widget.columns ?? defaultColumns;

    return columns.map((column) {
      final value = rowData[column];
      return DataCell(Text(_formatCellValue(value, column)));
    }).toList();
  }

  String _formatCellValue(dynamic value, String column) {
    if (value == null) return '-';

    switch (column) {
      case 'Timestamp':
        if (value is DateTime) {
          return '${value.day}/${value.month}/${value.year} ${value.hour}:${value.minute.toString().padLeft(2, '0')}';
        }
        return value.toString();
      case 'Value':
        if (value is num) {
          return value.toStringAsFixed(2);
        }
        return value.toString();
      case 'Status':
        if (value is MachineStatus) {
          return value.name;
        }
        return value.toString();
      default:
        return value.toString();
    }
  }

  List<Map<String, dynamic>> _getAllDataPoints() {
    final allPoints = <Map<String, dynamic>>[];

    for (final series in widget.data) {
      for (final point in series.data) {
        allPoints.add({
          'Timestamp': point.timestamp,
          'Machine ID': series.machineId,
          'Value': point.chartValue,
          'Unit': 'units', // Default unit since it's not in the model
          'Status': 'Active', // Default status since it's not in the model
        });
      }
    }

    return allPoints;
  }

  List<Map<String, dynamic>> _sortData(List<Map<String, dynamic>> data) {
    if (data.isEmpty) return data;

    final columns = widget.columns ?? ['Timestamp', 'Machine ID', 'Value', 'Unit', 'Status'];
    final sortColumn = columns[_sortColumnIndex];

    data.sort((a, b) {
      final aValue = a[sortColumn];
      final bValue = b[sortColumn];

      int comparison = 0;

      if (aValue is DateTime && bValue is DateTime) {
        comparison = aValue.compareTo(bValue);
      } else if (aValue is num && bValue is num) {
        comparison = aValue.compareTo(bValue);
      } else {
        comparison = aValue.toString().compareTo(bValue.toString());
      }

      return _sortAscending ? comparison : -comparison;
    });

    return data;
  }

  List<Map<String, dynamic>> _paginateData(List<Map<String, dynamic>> data) {
    if (!widget.showPagination) return data;

    final startIndex = _currentPage * widget.rowsPerPage;
    final endIndex = (startIndex + widget.rowsPerPage).clamp(0, data.length);

    return data.sublist(startIndex, endIndex);
  }

  void _onSort(int columnIndex, bool ascending) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });

    if (widget.onSort != null) {
      final columns = widget.columns ?? ['Timestamp', 'Machine ID', 'Value', 'Unit', 'Status'];
      widget.onSort!(columns[columnIndex]);
    }
  }

  Widget _buildPagination(int totalItems) {
    final totalPages = (totalItems / widget.rowsPerPage).ceil();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Text(
            'Showing ${(_currentPage * widget.rowsPerPage) + 1} to ${((_currentPage + 1) * widget.rowsPerPage).clamp(0, totalItems)} of $totalItems entries',
            style: Theme.of(context).textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          flex: 0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                  onPressed: _currentPage > 0 ? () => _goToPage(_currentPage - 1) : null,
                  icon: const Icon(Icons.chevron_left),
                ),
                // Only show limited page numbers to avoid overflow
                if (totalPages <= 5) ...[
                  ...List.generate(totalPages, (index) => _buildPageButton(index)),
                ] else ...[
                  // Show first page
                  _buildPageButton(0),
                  // Show dots if current page is far from start
                  if (_currentPage > 2) const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('...'),
                  ),
                  // Show pages around current page
                  ...List.generate(3, (i) {
                    final pageIndex = _currentPage + i - 1;
                    if (pageIndex > 0 && pageIndex < totalPages - 1) {
                      return _buildPageButton(pageIndex);
                    }
                    return const SizedBox.shrink();
                  }),
                  // Show dots if current page is far from end
                  if (_currentPage < totalPages - 3) const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('...'),
                  ),
                  // Show last page
                  if (totalPages > 1) _buildPageButton(totalPages - 1),
                ],
                IconButton(
                  onPressed: _currentPage < totalPages - 1
                      ? () => _goToPage(_currentPage + 1)
                      : null,
                  icon: const Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPageButton(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: () => _goToPage(index),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: _currentPage == index
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${index + 1}',
            style: TextStyle(
              color: _currentPage == index
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ),
      ),
    );
  }

  void _goToPage(int page) {
    setState(() {
      _currentPage = page;
    });
  }
}
