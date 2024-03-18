import 'package:densu/app/modules/home/model/chart_data.dart';
import 'package:densu/app/themes/app_theme.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:densu/app/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: SpacerConstants.standard,
          right: SpacerConstants.standard,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UniversalText("Dashboard"),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          UniversalText("Total Leads"),
                          Container(
                            height: 200,
                            child: SfCircularChart(series: <CircularSeries>[
                              RadialBarSeries<ChartData, String>(
                                  innerRadius: "90.0%",
                                  trackColor: AppTheme.theme.primaryColor,
                                  dataSource: controller.chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y)
                            ]),
                          )
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          UniversalText("Total Leads"),
                          Container(
                            height: 200,
                            child: SfCircularChart(series: <CircularSeries>[
                              RadialBarSeries<ChartData, String>(
                                  innerRadius: "90.0%",
                                  dataSource: controller.chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y)
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const UniversalText("New Leads"),
              PaginatedDataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('#'),
                  ),
                  DataColumn(
                    label: Text('Name'),
                  ),
                ],
                source: controller.dataSource,
              )
            ],
          ),
        ),
      ),
    );
  }
}
