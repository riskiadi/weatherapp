import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weatherlyn/screen/about.dart';
import 'package:weatherlyn/screen/locations.dart';
import 'package:weatherlyn/widget/circle_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleButtonWidget(icon: FontAwesomeIcons.globeAsia, onTap: (){Navigator.push(context, PageTransition(child: LocationPage(), type: PageTransitionType.leftToRightWithFade));},),
          Text("Weatherlyn", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Color(0XFF66727C)),),
          CircleButtonWidget(icon: FontAwesomeIcons.cog, onTap: (){Navigator.push(context, PageTransition(child: AboutPage(), type: PageTransitionType.rightToLeftWithFade));},),
        ],
      ),
    );
  }
}
