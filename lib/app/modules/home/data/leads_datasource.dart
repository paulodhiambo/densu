import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class LeadsDatasource extends DataTableSource {
  @override
  int get rowCount => 100;

  @override
  DataRow? getRow(int index) {
    if (index >= 0 && index < 100) {
      return DataRow(
        cells: <DataCell>[
          DataCell(Text("$index")),
          DataCell(Text(faker.person.name())),
        ],
      );
    }
    return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
