import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:weatherlyn/repository/weather.dart';
import 'package:weatherlyn/widget/app_bar.dart';
import 'package:weatherlyn/widget/chart.dart';
import 'package:weatherlyn/widget/detail.dart';
import 'package:weatherlyn/widget/header.dart';
import 'package:weatherlyn/widget/weekly_info.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  WeatherRepository _weatherRepository = WeatherRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE0E5EC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                AppbarWidget(),
                SizedBox(height: 40),
                HeaderWidget(),
                SizedBox(height: 35),
                DetailWidget(data: _weatherRepository.moreInfo()),
                SizedBox(height: 35),
                WeeklyInfoWidget(weeklyInfoModel: _weatherRepository.weeklyInfo(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

