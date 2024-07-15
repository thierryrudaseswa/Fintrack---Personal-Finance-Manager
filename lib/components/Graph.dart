import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 18,
          left: 12,
          top: 24,
          bottom: 12,
        ),
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      titlesData: FlTitlesData(
        leftTitles: SideTitles(
          showTitles: false, // Hide the numbers on the y-axis
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Jan';
              case 2:
                return 'Feb';
              case 3:
                return 'Mar';
              case 4:
                return 'Apr';
              case 5:
                return 'May';
              case 6:
                return 'June';
              case 7:
                return 'Jul';
              case 8:
                return 'Aug';
              case 9:
                return 'Sept';
              case 10:
                return 'Oct';
              case 11:
                return 'Nov';
              case 12:
                return 'Dec';
              default:
                return '';
            }
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: [
            const Color(0xff68737d),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [
              const Color(0xff68737d).withOpacity(0.3),
            ],
          ),
        ),
      ],
    );
  }
}
