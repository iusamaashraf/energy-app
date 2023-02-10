import 'package:energy_app/model/day_graph.dart';
import 'package:energy_app/views/pages/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MeterPage extends StatelessWidget {
  const MeterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.offAll(() => RootPage());
            },
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Meter',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            // height: Get.height * 0.5,
            // width: Get.width,
            child: CustomBarChart(
              dayChart: DayGraph.data,
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    required this.dayChart,
    super.key,
  });

  final List<DayGraph> dayChart;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DayGraph, String>> series = [
      charts.Series(
        id: 'days',
        data: dayChart,
        domainFn: (series, _) => series.index.toString(),
        measureFn: (series, _) => series.consumption,
        colorFn: (series, _) => series.barColor!,
      )
    ];

    return charts.BarChart(
      vertical: true,
      series,
      animate: true,
    );
  }
}
