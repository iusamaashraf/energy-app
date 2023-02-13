import 'package:energy_app/constants/colors.dart';
import 'package:energy_app/model/day_graph.dart';
import 'package:energy_app/views/pages/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DayPage extends StatelessWidget {
  const DayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Last Week',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Text(
                'Detailed View',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade400),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            // height: Get.height * 0.5,
            // width: Get.width,
            child: CustomBarChart(
              dayChart: DayGraph.data,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meter Details',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: Get.width * 0.8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Connected On',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '20, Aug 2022',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MPAN',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            Text(
                              '15',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.grey.shade400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
        fillColorFn: (series, _) => series.barColor,
        id: 'days',
        data: dayChart,
        domainFn: (series, _) => series.index.toString(),
        measureFn: (series, _) => (series.consumption) * 1000,
        colorFn: (series, _) => series.barColor!,
      )
    ];

    return charts.BarChart(
      vertical: true,
      series,
      animate: true,
      // defaultRenderer: charts.BarRendererConfig(
      //   barRendererDecorator: charts.BarLabelDecorator(
      //     insideLabelStyleSpec: charts.TextStyleSpec(
      //       fontSize: 12,
      //       color: charts.Color.fromHex(code: '#BDBDBD'),
      //     ),
      //   ),
      //   // barRendererDecorator: charts.BarLabelDecorator(
      //   //   outsideLabelStyleSpec: charts.TextStyleSpec(
      //   //     color: charts.Color.fromHex(code: '#BDBDBD'),
      //   //   ),
      //   // ),
      // ),
    );
  }
}
