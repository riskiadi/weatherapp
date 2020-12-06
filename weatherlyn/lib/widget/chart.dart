import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class ChartWidget extends StatelessWidget {

  final List<int> showIndexes = const [0,1,2,3,4,5,6,7,8];
  final List<FlSpot> allSpots = [
    FlSpot(0, 28),
    FlSpot(1, 28),
    FlSpot(2, 27),
    FlSpot(3, 25),
    FlSpot(4, 26),
    FlSpot(5, 25),
    FlSpot(6, 21),
    FlSpot(7, 18),
    FlSpot(8, 14),
  ];

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(

        showingIndicators: showIndexes,
        spots: allSpots,
        isCurved: true,
        barWidth: 1,
        shadow: const Shadow(
          blurRadius: 2,
          color: Color(0XFFB6C4CF),
        ),
        belowBarData: BarAreaData(
          show: true,
          colors: [
            Color(0XFFB6C4CF).withOpacity(0.9),
            Color(0XFFB6C4CF).withOpacity(0.0),
          ],
          gradientColorStops: [0.5, 0.9],
          gradientFrom: Offset(0, 0),
          gradientTo:  Offset(0, 1),
        ),
        dotData: FlDotData(show: true),
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

    return NeuBoxWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hourly Forecast",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0XFF66727C)),
          ),
          ConstrainedBox(
              constraints: BoxConstraints.expand(height: 140),
              child: lineChart(tooltipsOnBar, lineBarsData))
        ],
      ),
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
      maxY: 60,
      titlesData: FlTitlesData(
        leftTitles: SideTitles(
          showTitles: false,
          margin: 0.0
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
      gridData: FlGridData(show: false, ),
      borderData: FlBorderData(
        show: false,
      ),
    ),
  );
  }

}
