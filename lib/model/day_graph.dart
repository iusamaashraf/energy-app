import 'package:charts_flutter/flutter.dart' as charts;
import 'package:energy_app/constants/colors.dart';

class DayGraph {
  final int consumption;
  final String days;

  final int index;
  charts.Color? barColor;
  DayGraph({
    required this.consumption,
    required this.days,
    required this.index,
    this.barColor,
  }) {
    barColor = charts.ColorUtil.fromDartColor(ColorClass.lightGreenColor);
  }
  static final List<DayGraph> data = [
    DayGraph(consumption: 1000, days: 'Sa', index: 0),
    DayGraph(consumption: 5000, days: 'Su', index: 1),
    DayGraph(consumption: 2500, days: 'Mo', index: 2),
    DayGraph(consumption: 250, days: 'Mo', index: 3),
    DayGraph(consumption: 200, days: 'Tu', index: 4),
    DayGraph(consumption: 100, days: 'We', index: 5),
    DayGraph(consumption: 50, days: 'Th', index: 6),
    DayGraph(consumption: 10, days: 'Fr', index: 7),
  ];
}
