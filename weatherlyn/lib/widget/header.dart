import 'package:flutter/material.dart';
import 'package:weatherlyn/widget/neu_box.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeuBoxWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [headerInfo(), headerWeather()],
      ),
    );
  }

  Column headerWeather(){
    return Column(
      children: [
        Image.asset('assets/cloud.png', width: 60, height: 60,),
        SizedBox(height: 4),
        Text("Partly Cloudy", style: TextStyle(fontSize: 12, color: Color(0XFF66727C)),),
      ],
    );
  }

  Column headerInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Indonesia, Jakarta", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0XFF66727C)),),
        SizedBox(height: 5),
        Text("Wed 24 July 13:25 pm", style: TextStyle(fontSize: 12, color: Color(0XFF66727C)),),
        SizedBox(height: 10),
        Text("28℃", style: TextStyle(color: Color(0XFF66727C), fontSize: 20, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
