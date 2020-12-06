import 'package:flutter/material.dart';
import 'package:weatherlyn/widget/circle_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleButtonWidget(icon: FontAwesomeIcons.globeAsia,),
          Text("Weatherlyn", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0XFF66727C)),),
          CircleButtonWidget(icon: FontAwesomeIcons.cog,),
        ],
      ),
    );
  }
}
