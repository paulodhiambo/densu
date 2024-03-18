class ChartData {
  ChartData({String? x, num? y,}){
    _x = x;
    _y = y;
}

  ChartData.fromJson(dynamic json) {
    _x = json['x'];
    _y = json['y'];
  }
  String? _x;
  num? _y;
ChartData copyWith({  String? x,
  num? y,
}) => ChartData(  x: x ?? _x,
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