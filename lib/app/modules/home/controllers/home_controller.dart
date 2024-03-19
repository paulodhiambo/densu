import 'package:densu/app/modules/home/data/leads_datasource.dart';
import 'package:densu/app/modules/home/model/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final DataTableSource dataSource = LeadsDatasource();
  List<BarChartData> data = [
    BarChartData('CHN', 12),
    BarChartData('GER', 15),
    BarChartData('RUS', 30),
    BarChartData('BRZ', 6.4),
    BarChartData('IND', 14)
  ];
  final List<ChartData> chartData = [
    ChartData(x: 'David', y: 25),
  ];

  final List<PieChartData> pieChartData = [
    PieChartData('Accounts', 25),
    PieChartData('Insurance', 38),
    PieChartData('Credit', 34),
  ];

  final List<SalesData> salesChartData = [
    SalesData(DateTime(2010), 35),
    SalesData(DateTime(2011), 28),
    SalesData(DateTime(2012), 34),
    SalesData(DateTime(2013), 32),
    SalesData(DateTime(2014), 40)
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
