import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'header.dart'; // Assuming header.dart is your custom header file

class Dues extends StatefulWidget {
  const Dues({super.key});

  @override
  State<Dues> createState() => _DuesState();
}

class _DuesState extends State<Dues> {
  bool _isExpanded = false;
  bool _isExpanded2 = false;
  bool _sortAscending = true;
  int _sortColumnIndex = 0;

  final List<Map<String, dynamic>> _duesData = [
    {'date': '2023-08-22', 'amount': 50},
    {'date': '2023-08-22', 'amount': 75},
    {'date': '2023-08-21', 'amount': 60},
    {'date': '2023-08-20', 'amount': 90},
  ];

  List<Map<String, dynamic>> _filteredDuesData = [];

  DateTimeRange? _selectedDateRange;

  @override
  void initState() {
    super.initState();
    _filteredDuesData = List.from(_duesData); // Initialize with all data
  }

  void _filterDataForToday() {
    final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    setState(() {
      _filteredDuesData = _duesData.where((dues) => dues['date'] == today).toList();
      _isExpanded2 = true;
    });
  }

  void _filterDataByDateRange(DateTimeRange? dateRange) {
    if (dateRange == null) return;
    setState(() {
      _filteredDuesData = _duesData.where((dues) {
        final date = DateTime.parse(dues['date']);
        return date.isAfter(dateRange.start) && date.isBefore(dateRange.end);
      }).toList();
      _isExpanded = true;
      _isExpanded2 = false;
    });
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final pickedDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      initialDateRange: _selectedDateRange,
    );
    if (pickedDateRange != null && pickedDateRange != _selectedDateRange) {
      setState(() {
        _selectedDateRange = pickedDateRange;
        _filterDataByDateRange(pickedDateRange);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          headerMenu('Dues', 'Service \nRequest', context),
          const SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                      _filteredDuesData = List.from(_duesData);
                    });
                  },
                  child: Container(
                    color: _isExpanded ? const Color(0xfff1f2f7) : Colors.transparent,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('All time'),
                  ),
                ),
                GestureDetector(
                  onTap: () => _filterDataForToday(),
                  child: Container(
                    color: _isExpanded2 ? const Color(0xfff1f2f7) : Colors.transparent,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Today'),
                  ),
                ),
                GestureDetector(
                  onTap: () => _selectDateRange(context),
                  child: Container(
                    color: _selectedDateRange != null ? const Color(0xfff1f2f7) : Colors.transparent,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Custom Range'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          if (_isExpanded || _isExpanded2 || _selectedDateRange != null)
            _buildDuesTable(),
        ],
      ),
    );
  }

  Widget _buildDuesTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        sortColumnIndex: _sortColumnIndex,
        sortAscending: _sortAscending,
        columns: [
          DataColumn(
            label: const Text('#'),
            onSort: (columnIndex, ascending) {
              _sort<int>((d) => d['index'], columnIndex, ascending);
            },
          ),
          DataColumn(
            label: const Text('Date'),
            onSort: (columnIndex, ascending) {
              _sort<String>((d) => d['date'], columnIndex, ascending);
            },
          ),
          DataColumn(
            label: const Text('Amount'),
            numeric: true,
            onSort: (columnIndex, ascending) {
              _sort<num>((d) => d['amount'], columnIndex, ascending);
            },
          ),
        ],
        rows: List<DataRow>.generate(
          _filteredDuesData.length,
              (index) {
            final dues = _filteredDuesData[index];
            return DataRow(cells: [
              DataCell(Text((index + 1).toString())),
              DataCell(Text(dues['date'])),
              DataCell(Text(dues['amount'].toString())),
            ]);
          },
        ),
      ),
    );
  }

  void _sort<T>(
      Comparable<T> Function(Map<String, dynamic> d) getField,
      int columnIndex,
      bool ascending,
      ) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
      _filteredDuesData.sort((a, b) {
        final aValue = getField(a);
        final bValue = getField(b);
        return ascending
            ? Comparable.compare(aValue, bValue)
            : Comparable.compare(bValue, aValue);
      });
    });
  }
}
