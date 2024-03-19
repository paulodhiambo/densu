import 'package:densu/app/modules/home/model/chart_data.dart';
import 'package:densu/app/themes/app_theme.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:densu/app/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../themes/colors.dart';
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: UniversalText(
                  "Dashboard",
                  style: TextStyleConstants.getStyle(
                    textStyle: TextStyles.xlarge,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.small,
              ),
              SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(right: SpacerConstants.xsmall),
                  children: [
                    Card(
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          left: SpacerConstants.xsmall,
                          right: SpacerConstants.xsmall,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UniversalText(
                                  "Total Leads",
                                  style: TextStyleConstants.getStyle(
                                    textStyle: TextStyles.large,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(
                              height: 190,
                              width: 180,
                              child: SfCircularChart(
                                series: <CircularSeries>[
                                  RadialBarSeries<ChartData, String>(
                                      innerRadius: "90.0%",
                                      trackColor: AppTheme.theme.primaryColor,
                                      dataSource: controller.chartData,
                                      xValueMapper: (ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData data, _) =>
                                          data.y)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const UniversalSpacer(
                      width: SpacerConstants.xsmall,
                    ),
                    Card(
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          left: SpacerConstants.xsmall,
                          right: SpacerConstants.xsmall,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UniversalText(
                                  "Requests",
                                  style: TextStyleConstants.getStyle(
                                    textStyle: TextStyles.large,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(
                              height: 190,
                              width: 200,
                              child: SfCircularChart(
                                  legend: const Legend(
                                      isVisible: true,
                                      position: LegendPosition.bottom,
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                      itemPadding: 10,
                                      iconHeight: 8,
                                      iconBorderWidth: 8),
                                  series: <CircularSeries>[
                                    PieSeries<PieChartData, String>(
                                        dataSource: controller.pieChartData,
                                        pointColorMapper:
                                            (PieChartData data, _) =>
                                                data.color,
                                        xValueMapper: (PieChartData data, _) =>
                                            data.x,
                                        yValueMapper: (PieChartData data, _) =>
                                            data.y)
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    const UniversalSpacer(
                      width: SpacerConstants.xsmall,
                    ),
                    Card(
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          left: SpacerConstants.xsmall,
                          right: SpacerConstants.xsmall,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UniversalText(
                                  "Leads",
                                  style: TextStyleConstants.getStyle(
                                    textStyle: TextStyles.large,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(
                              height: 190,
                              width: 170,
                              child: SfCartesianChart(
                                  primaryXAxis: const DateTimeAxis(),
                                  series: <CartesianSeries>[
                                    // Renders line chart
                                    LineSeries<SalesData, DateTime>(
                                        dataSource: controller.salesChartData,
                                        xValueMapper: (SalesData sales, _) =>
                                            sales.year,
                                        yValueMapper: (SalesData sales, _) =>
                                            sales.sales)
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    const UniversalSpacer(
                      width: SpacerConstants.xsmall,
                    ),
                    Card(
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          left: SpacerConstants.xsmall,
                          right: SpacerConstants.xsmall,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UniversalText(
                                  "Total Products",
                                  style: TextStyleConstants.getStyle(
                                    textStyle: TextStyles.large,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Icon(Icons.more_horiz)
                              ],
                            ),
                            UniversalText(
                              "Universal large design company whether it's a multi-national branding",
                              style: TextStyleConstants.getStyle(
                                textStyle: TextStyles.xxsmall,
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 170,
                              width: 170,
                              child: SfCartesianChart(
                                primaryXAxis: const CategoryAxis(),
                                primaryYAxis: const NumericAxis(
                                    minimum: 0, maximum: 40, interval: 10),
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series: <CartesianSeries<BarChartData, String>>[
                                  BarSeries<BarChartData, String>(
                                    dataSource: controller.data,
                                    xValueMapper: (BarChartData data, _) =>
                                        data.x,
                                    yValueMapper: (BarChartData data, _) =>
                                        data.y,
                                    name: 'Gold',
                                    color: const Color.fromRGBO(8, 142, 255, 1),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const UniversalSpacer(
                      width: SpacerConstants.xsmall,
                    ),
                  ],
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.small,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: UniversalText(
                  "New Leads",
                  style: TextStyleConstants.getStyle(
                    textStyle: TextStyles.slarge,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.small,
              ),
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
