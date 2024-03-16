import 'package:flutter/material.dart';

class PaginatedDataTableWidget extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final int rowsPerPage;
  final List<int> availableRowsPerPage;
  final int initialRowsPerPage;
  final Function(int)? onRowsPerPageChanged;
  final int? sortColumnIndex;
  final bool sortAscending;
  final String? header;

  const PaginatedDataTableWidget({
    super.key,
    required this.columns,
    required this.rows,
    this.rowsPerPage = PaginatedDataTable.defaultRowsPerPage,
    this.availableRowsPerPage = const [5, 10, 20],
    this.initialRowsPerPage = PaginatedDataTable.defaultRowsPerPage,
    this.onRowsPerPageChanged,
    this.sortColumnIndex,
    this.sortAscending = true,
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
    // return SingleChildScrollView(
    //   child: PaginatedDataTable(
    //     columns: columns,
    //     source: DataTableSource(
    //       rows: rows,
    //       selectedRowCount: 0,
    //     ),
    //     rowsPerPage: rowsPerPage,
    //     availableRowsPerPage: availableRowsPerPage,
    //     onRowsPerPageChanged: onRowsPerPageChanged,
    //     initialRowsPerPage: initialRowsPerPage,
    //     sortColumnIndex: sortColumnIndex,
    //     sortAscending: sortAscending,
    //     header: header != null ? Text(header!) : null,
    //   ),
    // );
  }
}
