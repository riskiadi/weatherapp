import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final List<int> showIndexes = const [0,1,2,3,4,5,6,7];
  final List<FlSpot> allSpots = [
    FlSpot(0, 10),
    FlSpot(1, 2),
    FlSpot(2, 3),
    FlSpot(3, 10),
    FlSpot(4, 3),
    FlSpot(5, 6),
    FlSpot(6, 1),
    FlSpot(7, 5),
  ];

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showIndexes,
        spots: allSpots,
        isCurved: true,
        barWidth: 2,
        // shadow: const Shadow(
        //   blurRadius: 8,
        //   color: Colors.black,
        // ),
        belowBarData: BarAreaData(
          show: true,
          colors: [
            Color(0XFFFF90A5).withOpacity(0.9),
            Color(0XFFFF90A5).withOpacity(0.0),
          ],
          gradientColorStops: [0.5, 0.9],
          gradientFrom: Offset(0, 0),
          gradientTo:  Offset(0, 1),
        ),
        dotData: FlDotData(show: false),
        colors: [
          Color(0XFFFF90A5)
        ],
      ),
    ];

    final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Scaffold(
      body: Center(
        child: LineChart(
          LineChartData(
            showingTooltipIndicators: showIndexes.map((index) {
              return ShowingTooltipIndicators(index, [
                LineBarSpot(
                    tooltipsOnBar, lineBarsData.indexOf(tooltipsOnBar), tooltipsOnBar.spots[index]),
              ]);
            }).toList(),
            lineTouchData: LineTouchData(
              enabled: false,
              getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
                return spotIndexes.map((index) {
                  return TouchedSpotIndicatorData(
                    FlLine(
                      color: Colors.transparent,
                    ),
                    FlDotData(
                      show: false,
                      getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                        radius: 8,
                        color: Colors.cyan,
                        strokeWidth: 2,
                        strokeColor: Colors.black,
                      ),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipRoundedRadius: 8,
                tooltipPadding: const EdgeInsets.all(0),
                getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                  return lineBarsSpot.map((lineBarSpot) {
                    return LineTooltipItem(
                      "${lineBarSpot.y.toStringAsFixed(0)}℃",
                      TextStyle(
                        color: Color(0XFFFF90A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                    );
                  }).toList();
                },
              ),
            ),
            lineBarsData: lineBarsData,
            minY: 0,
            maxY: 25,
            titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: false,
              ),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (val) {
                    switch (val.toInt()) {
                      case 0:
                        return "Now";
                      case 1:
                        return "14:00";
                      case 2:
                        return "15:00";
                      case 3:
                        return "16:00";
                      case 4:
                        return "17:00";
                      case 5:
                        return "18:00";
                      case 6:
                        return "19:00";
                      case 7:
                        return "20:00";
                      case 8:
                        return "21:00";
                      default:
                        return "";
                    }
                  },
                  getTextStyles: (value) => const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF66727C),
                    fontSize: 10,
                  )),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(
              show: false,
            ),
          ),
        ),
      ),
    );
  }

}
