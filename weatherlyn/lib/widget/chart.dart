import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {

  final List<int> showIndexes = const [0,1,2,3,4,5,6,7,8];
  final List<FlSpot> allSpots = [
    FlSpot(0, 25),
    FlSpot(1, 27),
    FlSpot(2, 28),
    FlSpot(3, 29),
    FlSpot(4, 31),
    FlSpot(5, 32),
    FlSpot(6, 31),
    FlSpot(7, 31),
    FlSpot(8, 29),
  ];

  @override
  Widget build(BuildContext context) {

    final lineBarsData = [
      LineChartBarData(

        showingIndicators: showIndexes,
        spots: allSpots,
        isCurved: true,
        barWidth: 5,
        shadow: const Shadow(
          blurRadius: 15,
          color: Color(0XFFB6C4CF),
        ),
        belowBarData: BarAreaData(
          show: true,
          colors: [
            Color(0XFFB6C4CF).withOpacity(0.8),
            Color(0XFFB6C4CF).withOpacity(0.0),
          ],
          gradientColorStops: [0.0, 0.7],
          gradientFrom: Offset(0, 0),
          gradientTo:  Offset(0, 1),
        ),
        dotData: FlDotData(show: false,),
        colors: [
          Color(0XFFB6C4CF).withOpacity(0.4),
          Color(0XFFB6C4CF),
          Color(0XFFB6C4CF),
          Color(0XFFB6C4CF),
          Color(0XFFB6C4CF),
          Color(0XFFB6C4CF).withOpacity(0.4),
        ],
      ),
    ];

    final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(height: 130),
        child: lineChart(tooltipsOnBar, lineBarsData),),
    );
  }

  LineChart lineChart(LineChartBarData tooltipsOnBar, List<LineChartBarData> lineBarsData) {
    return LineChart(
    LineChartData(
      maxX: 8,
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
                show: true,
                getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                  radius: 7,
                  color: Color(0XFFBFCBD5),
                  strokeWidth: 0,
                  strokeColor: Colors.transparent,
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
                    color: Color(0XFF66727C).withOpacity(0.6),
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
      maxY: 38,
      titlesData: FlTitlesData(
        leftTitles: SideTitles(
          showTitles: false,
          margin: 0.0
        ),
        bottomTitles: SideTitles(
            showTitles: true,
            margin: -70.0,
            getTitles: (val) {
              switch (val.toInt()) {
                case 0:
                  return "Now";
                case 1:
                  return "08:00";
                case 2:
                  return "09:00";
                case 3:
                  return "10:00";
                case 4:
                  return "11:00";
                case 5:
                  return "12:00";
                case 6:
                  return "13:00";
                case 7:
                  return "14:00";
                case 8:
                  return "15:00";
                default:
                  return "";
              }
            },
            getTextStyles: (value) => const TextStyle(
              color: Color(0XFF9CA5AD),
              fontSize: 10,
            )),
      ),
      gridData: FlGridData(show: false, ),
      borderData: FlBorderData(
        show: false,
      ),
    ),
  );
  }

}
