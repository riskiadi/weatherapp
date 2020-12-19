import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weatherlyn/screen/locations.dart';

class CircleButtonWidget extends StatelessWidget {

  final IconData icon;
  final Function onTap;

  const CircleButtonWidget({@required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Color(0XFFA3B1C6), offset: Offset(9, 9), blurRadius: 16),
          BoxShadow(color: Colors.white, offset: Offset(-9, -9), blurRadius: 16,)
        ],
        color: Color(0XFFE0E5EC),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap??(){},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0XFFE0E5EC),
          ),
          child: Icon(icon, color: Color(0XFF66727C),),
        ),
      ),
    );
  }
}
