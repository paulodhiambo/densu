import 'package:flutter/material.dart';

class BarChartData {
  BarChartData(this.x, this.y);

  final String x;
  final double y;
}

class SalesData {
  SalesData(this.year, this.sales);

  final DateTime year;
  final double sales;
}

class PieChartData {
  PieChartData(this.x, this.y, [this.color]);

  final String x;
  final double y;
  final Color? color;
}

class ChartData {
  ChartData({
    String? x,
    num? y,
  }) {
    _x = x;
    _y = y;
  }

  ChartData.fromJson(dynamic json) {
    _x = json['x'];
    _y = json['y'];
  }

  String? _x;
  num? _y;

  ChartData copyWith({
    String? x,
    num? y,
  }) =>
      ChartData(
        x: x ?? _x,
        y: y ?? _y,
      );

  String? get x => _x;

  num? get y => _y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['x'] = _x;
    map['y'] = _y;
    return map;
  }
}
