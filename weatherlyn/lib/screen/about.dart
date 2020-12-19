import 'package:flutter/material.dart';
import 'package:weatherlyn/model/locations.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFF66727C)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("About", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0XFF66727C),),),
      ),
      backgroundColor: Color(0XFFE0E5EC),
      body: Center(
        child: Column(
          children: [
            NeuBoxWidget(
              child: Image.asset('assets/icon.png', height: 90, width: 90,),
            ),
            SizedBox(height: 30,),
            Text(
              "Weatherlyn",
              style: TextStyle(
                fontSize: 22,
                color: Color(0XFF66727C),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 13,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "With the Weather app, you can look up the weather by city name. You can also create a list of cities to track and arrange the cities in the order that you want.",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0XFF66727C),
                  wordSpacing: 3
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
