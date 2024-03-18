import 'package:densu/app/modules/home/data/leads_datasource.dart';
import 'package:densu/app/modules/home/model/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final DataTableSource dataSource = LeadsDatasource();
  final List<ChartData> chartData = [
    ChartData(x: 'David', y: 25),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
