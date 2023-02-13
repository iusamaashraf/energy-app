import 'package:charts_flutter/flutter.dart' as charts;
import 'package:energy_app/constants/colors.dart';

class DayGraph {
  final num consumption;
  final String days;

  final String index;
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
    DayGraph(consumption: 1, days: 'Sa', index: 'Sa'),
    DayGraph(consumption: 5, days: 'Su', index: 'Su'),
    DayGraph(consumption: 2.5, days: 'Mo', index: 'Mo'),
    DayGraph(consumption: 0.25, days: 'Mo', index: 'Mo'),
    DayGraph(consumption: 0.2, days: 'Tu', index: 'Tu'),
    DayGraph(consumption: 0.1, days: 'We', index: 'We'),
    DayGraph(consumption: 0.05, days: 'Th', index: 'Th'),
    DayGraph(consumption: 1, days: 'Fr', index: 'Fr'),
  ];
  // static final List<DayGraph> data = [
  //   DayGraph(consumption: "${1000} kWh", days: 'Sa', index: 'Sa'),
  //   DayGraph(consumption: "${5000} kWh", days: 'Su', index: 'Su'),
  //   DayGraph(consumption: "${2500} kWh", days: 'Mo', index: 'Mo'),
  //   DayGraph(consumption: "${250} kWh", days: 'Mo', index: 'Mo'),
  //   DayGraph(consumption: "${200} kWh", days: 'Tu', index: 'Tu'),
  //   DayGraph(consumption: "${100} kWh", days: 'We', index: 'We'),
  //   DayGraph(consumption: "${50} kWh", days: 'Th', index: 'Th'),
  //   DayGraph(consumption: "${1000} kWh", days: 'Fr', index: 'Fr'),
  // ];
}
